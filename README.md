# ghostty-lcars

A Voyager-era LCARS color theme for [Ghostty](https://ghostty.org) — black background,
amber cursor, and the soft blue/violet/amber accents of a 24th-century console.

## Install

```sh
git clone https://github.com/jrodarte/ghostty-lcars.git
cd ghostty-lcars
./install.sh --set
```

That copies `themes/lcars` into Ghostty's theme directory and adds `theme = lcars`
to your config. Drop the `--set` if you'd rather add the line yourself.

Or do it by hand:

```sh
mkdir -p ~/.config/ghostty/themes
curl -o ~/.config/ghostty/themes/lcars \
  https://raw.githubusercontent.com/jrodarte/ghostty-lcars/main/themes/lcars
echo 'theme = lcars' >> ~/.config/ghostty/config
```

On macOS the theme directory is
`~/Library/Application Support/com.mitchellh.ghostty/themes` instead.

Reload with `ctrl+shift+,` or restart Ghostty.

## Optional extras

Ghostty theme files hold colors only, so these go in your `config` if you want the
full look:

```
background-opacity = 0.96
cursor-style = block
font-family = "JetBrainsMono Nerd Font"
```

## Palette

| Slot | Color | | Slot | Color |
|---|---|---|---|---|
| background | `#000000` | | bright black | `#666688` |
| foreground | `#ececf2` | | bright red | `#ff8866` |
| cursor | `#ffaa00` | | bright green | `#33cc99` |
| selection | `#ff9900` | | bright yellow | `#ffcc99` |
| black | `#000000` | | bright blue | `#9999ff` |
| red | `#ff5555` | | bright magenta | `#ddbbff` |
| green | `#33cc99` | | bright cyan | `#88ccff` |
| yellow | `#ffcc66` | | bright white | `#f5f6fa` |
| blue | `#7788ff` | | | |
| magenta | `#cc99ff` | | | |
| cyan | `#88ccff` | | | |
| white | `#b4b4c4` | | | |

## Related

Part of a larger LCARS rice:

- [tmux-lcars](https://github.com/jrodarte/tmux-lcars) — matching tmux status deck with live telemetry
- [lcars.nvim](https://github.com/jrodarte/lcars.nvim) — Neovim colorscheme, statusline and dashboard
