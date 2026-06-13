#!/usr/bin/env bash
set -euo pipefail

usage() {
  cat <<'EOF'
Publish dist/building-an-exo.skill to GitHub Releases.

Usage:
  scripts/release.sh [options]

Options:
  --version VERSION   Override version (default: read from config.toml)
  --notes TEXT        Release notes (default: short auto-generated blurb)
  --notes-file PATH   Read release notes from a file
  --replace           Delete an existing release/tag before creating a new one
  --dry-run           Print the gh command without running it
  -h, --help          Show this help

Examples:
  scripts/release.sh
  scripts/release.sh --replace
  scripts/release.sh --version 1.4.1 --notes "Fix packaged skill archive"
EOF
}

REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
SKILL_FILE="$REPO_ROOT/dist/building-an-exo.skill"
CONFIG="$REPO_ROOT/config.toml"
GITHUB_REPO="Exponential-Organizations/building-an-exo-skill"

VERSION=""
NOTES=""
NOTES_FILE=""
REPLACE=false
DRY_RUN=false

while [[ $# -gt 0 ]]; do
  case "$1" in
    --version)
      VERSION="${2:?--version requires a value}"
      shift 2
      ;;
    --notes)
      NOTES="${2:?--notes requires a value}"
      shift 2
      ;;
    --notes-file)
      NOTES_FILE="${2:?--notes-file requires a path}"
      shift 2
      ;;
    --replace)
      REPLACE=true
      shift
      ;;
    --dry-run)
      DRY_RUN=true
      shift
      ;;
    -h|--help)
      usage
      exit 0
      ;;
    *)
      echo "Unknown option: $1" >&2
      usage >&2
      exit 1
      ;;
  esac
done

if [[ ! -f "$SKILL_FILE" ]]; then
  echo "Missing canonical skill archive: $SKILL_FILE" >&2
  exit 1
fi

if [[ -z "$VERSION" ]]; then
  if [[ ! -f "$CONFIG" ]]; then
    echo "Missing config.toml and no --version provided." >&2
    exit 1
  fi
  VERSION="$(grep -E '^version = ' "$CONFIG" | head -1 | sed -E 's/^version = "([^"]+)".*/\1/')"
  if [[ -z "$VERSION" ]]; then
    echo "Could not read version from $CONFIG" >&2
    exit 1
  fi
fi

if [[ -n "$NOTES_FILE" ]]; then
  if [[ ! -f "$NOTES_FILE" ]]; then
    echo "Notes file not found: $NOTES_FILE" >&2
    exit 1
  fi
  NOTES="$(cat "$NOTES_FILE")"
fi

if [[ -z "$NOTES" ]]; then
  NOTES="ExO 3.0 the Organizational Singularity Skill v${VERSION}. Installable .skill archive from dist/."
fi

TAG="v${VERSION}"

if ! command -v gh >/dev/null 2>&1; then
  echo "GitHub CLI (gh) is required but not installed." >&2
  exit 1
fi

if ! gh auth status >/dev/null 2>&1; then
  echo "GitHub CLI is not authenticated. Run: gh auth login" >&2
  exit 1
fi

run() {
  if [[ "$DRY_RUN" == true ]]; then
    printf 'DRY RUN: '
    printf '%q ' "$@"
    printf '\n'
  else
    "$@"
  fi
}

if gh release view "$TAG" --repo "$GITHUB_REPO" >/dev/null 2>&1; then
  if [[ "$REPLACE" != true ]]; then
    echo "Release $TAG already exists on $GITHUB_REPO." >&2
    echo "Use --replace to delete and recreate it with dist/building-an-exo.skill." >&2
    exit 1
  fi

  echo "Deleting existing release $TAG..."
  run gh release delete "$TAG" --repo "$GITHUB_REPO" --yes
  run git -C "$REPO_ROOT" push origin ":refs/tags/$TAG" 2>/dev/null || true
fi

echo "Creating release $TAG with $(basename "$SKILL_FILE")..."
run gh release create "$TAG" "$SKILL_FILE" \
  --repo "$GITHUB_REPO" \
  --target master \
  --title "$TAG" \
  --notes "$NOTES"

if [[ "$DRY_RUN" != true ]]; then
  echo
  echo "Release published:"
  gh release view "$TAG" --repo "$GITHUB_REPO" --web 2>/dev/null || \
    echo "https://github.com/$GITHUB_REPO/releases/tag/$TAG"
fi
