#!/usr/bin/env bash
set -euo pipefail

usage() {
  cat <<'EOF'
Publish both skill archives (Claude + Codex) from dist/ to GitHub Releases.

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
CLAUDE_SKILL="$REPO_ROOT/dist/building-an-exo.skill"
CODEX_SKILL="$REPO_ROOT/dist/building-an-exo-codex.skill"
CONFIG="$REPO_ROOT/claude/config.toml"
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

for f in "$CLAUDE_SKILL" "$CODEX_SKILL"; do
  if [[ ! -f "$f" ]]; then
    echo "Missing skill archive: $f" >&2
    exit 1
  fi
done

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
  NOTES="ExO 3.0 the Organizational Singularity Skill v${VERSION}. Two installable .skill archives: building-an-exo.skill (Claude) and building-an-exo-codex.skill (Codex)."
fi

TAG="v${VERSION}"

resolve_gh() {
  local candidate

  if [[ -n "${GH_BIN:-}" && -x "$GH_BIN" ]]; then
    echo "$GH_BIN"
    return 0
  fi

  if candidate="$(command -v gh 2>/dev/null)" && [[ -n "$candidate" ]]; then
    echo "$candidate"
    return 0
  fi

  for candidate in \
    "$HOME/bin/gh" \
    "/usr/local/bin/gh" \
    "/usr/bin/gh" \
    "/snap/bin/gh"; do
    if [[ -x "$candidate" ]]; then
      echo "$candidate"
      return 0
    fi
  done

  return 1
}

if ! GH="$(resolve_gh)"; then
  cat >&2 <<'EOF'
GitHub CLI (gh) is required but was not found.

Install options:
  - https://cli.github.com/
  - or set GH_BIN to the full path of your gh binary
EOF
  exit 1
fi

if ! "$GH" auth status >/dev/null 2>&1; then
  echo "GitHub CLI is not authenticated. Run: $GH auth login" >&2
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

if "$GH" release view "$TAG" --repo "$GITHUB_REPO" >/dev/null 2>&1; then
  if [[ "$REPLACE" != true ]]; then
    echo "Release $TAG already exists on $GITHUB_REPO." >&2
    echo "Use --replace to delete and recreate it with both dist/ archives." >&2
    exit 1
  fi

  echo "Deleting existing release $TAG..."
  run "$GH" release delete "$TAG" --repo "$GITHUB_REPO" --yes
  run git -C "$REPO_ROOT" push origin ":refs/tags/$TAG" 2>/dev/null || true
fi

echo "Creating release $TAG with $(basename "$CLAUDE_SKILL") + $(basename "$CODEX_SKILL")..."
run "$GH" release create "$TAG" "$CLAUDE_SKILL" "$CODEX_SKILL" \
  --repo "$GITHUB_REPO" \
  --target master \
  --title "$TAG" \
  --notes "$NOTES"

if [[ "$DRY_RUN" != true ]]; then
  echo
  echo "Release published:"
  "$GH" release view "$TAG" --repo "$GITHUB_REPO" --web 2>/dev/null || \
    echo "https://github.com/$GITHUB_REPO/releases/tag/$TAG"
fi
