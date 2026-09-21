#!/usr/bin/env bash
# Install the LCARS theme into Ghostty's config directory.
#
#   ./install.sh          copy the theme, then print the line to add
#   ./install.sh --set    also append `theme = lcars` to your Ghostty config
set -euo pipefail

src="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/themes/lcars"

case "$(uname -s)" in
  Darwin) dest_dir="$HOME/Library/Application Support/com.mitchellh.ghostty/themes" ;;
  *)      dest_dir="${XDG_CONFIG_HOME:-$HOME/.config}/ghostty/themes" ;;
esac
config="$(dirname "$dest_dir")/config"

mkdir -p "$dest_dir"
cp "$src" "$dest_dir/lcars"
echo "installed: $dest_dir/lcars"

if [[ "${1:-}" == "--set" ]]; then
  if grep -qE '^[[:space:]]*theme[[:space:]]*=[[:space:]]*lcars[[:space:]]*$' "$config" 2>/dev/null; then
    echo "$config already set to \`theme = lcars\` — nothing to do."
  elif grep -qE '^[[:space:]]*theme[[:space:]]*=' "$config" 2>/dev/null; then
    echo "note: $config already sets a different theme — leaving it alone."
    echo "      change that line to \`theme = lcars\` by hand."
  else
    mkdir -p "$(dirname "$config")"
    printf '\ntheme = lcars\n' >> "$config"
    echo "added \`theme = lcars\` to $config"
  fi
else
  echo "next: add this to $config"
  echo
  echo "  theme = lcars"
fi

echo
echo "then reload Ghostty (ctrl+shift+comma, or just restart it)."
