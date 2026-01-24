# Repository Guidelines

## Project Structure & Module Organization
This repository is a theme bundle for Omarchy. Configuration and assets are stored at the top level, grouped by target application.

- `hyprland.conf`, `hyprlock.conf`: Hyprland compositor and lock screen theme settings.
- `waybar.css`, `walker.css`, `swayosd.css`: UI styling for Waybar, Walker, and swayosd.
- `ghostty.conf`, `neovim.lua`, `mako.ini`, `btop.theme`, `chromium.theme`, `icons.theme`: App-specific theme configs.
- `colors.toml`, `colors.md`: Palette definitions and documentation.
- `backgrounds/`, `preview.jpg`: Wallpaper assets and preview image.

## Build, Test, and Development Commands
No build system or test runner is defined in this repo (no `package.json`, `Makefile`, or CI scripts).
- Make changes directly in the config files and reload the affected application to verify (e.g., reloading Hyprland/Waybar via their usual tooling).
- For visual changes, update `preview.jpg` if the output should be documented.

## Coding Style & Naming Conventions
- Preserve existing formatting: section banners, aligned comment blocks, and the `oma*` palette naming (e.g., `@define-color oma0`, `$oma0`).
- Keep indentation consistent with the file’s current style (typically 2 spaces in CSS blocks and no indentation for top-level Hyprland variables).
- Use clear, scoped labels for new color roles (e.g., `@define-color warning`, `$activeBorderColor`).

## Testing Guidelines
- There are no automated tests.
- Validate changes by reloading the relevant app and visually checking for contrast, transparency, and glassmorphism intent.

## Commit & Pull Request Guidelines
- Commit messages follow a `type: summary` convention (e.g., `feat: add colors.toml`, `fix: hyprland rules`, `style: ...`).
- Keep summaries short and focused on one change.
- PRs (if used) should include: a brief summary, files/areas touched, and a screenshot or updated `preview.jpg` for visual updates.

## Agent-Specific Instructions
- Prefer small, focused edits and keep palette semantics consistent across all config files.
- Avoid introducing new tooling unless the project explicitly adopts it.
