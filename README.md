# HDI_Tips

A 4D **HDI** (How Do I) example demonstrating programmatic control of built-in form object help tips: enabling/disabling them database-wide, tuning their delay and display duration, and setting a tip's text dynamically at runtime.

## Overview

Help tips are the small pop-up captions 4D shows when the mouse hovers over a form object. This example shows how to move beyond the static, design-time tip text and control tips programmatically:

- Turn all tips in the application on or off.
- Change how long the mouse must hover before a tip appears, and how long it stays visible.
- Replace a tip's text on the fly, based on runtime state (here, which animal the mouse is currently over in a picture).

## Features

- **`SET DATABASE PARAMETER` for tips** — `Tips enabled`, `Tips delay`, and `Tips duration` are read and written at runtime to control tip behaviour database-wide.
- **Dynamic tip text** — `OBJECT SET HELP TIP` / `OBJECT Get help tip` update a picture object's tip text as the mouse moves, based on a lookup table (`AnimalTips`).
- **Modern startup flow** — the splash screen (`00_Start`) uses `CALL WORKER`, a non-blocking `DIALOG(...;*)`, and window-reuse detection instead of spawning a new process or blocking on a modal dialog.
- **XLIFF localisation** — all user-facing menu, form, and message strings are externalised to `Resources/{lang}.lproj/*.xlf` (English and Japanese), grouped by purpose (menus, per-form, messages).
- **Dark mode & Liquid Glass** — `styleSheets.css` uses `"automatic"` colour values so text/controls adapt to light/dark mode; `styleSheets_mac.css` sizes buttons correctly for macOS Tahoe's Liquid Glass appearance as well as classic rendering.
- **Modern method declarations** — all methods use `#DECLARE`/`var` typing instead of legacy `C_*` directives, with subroutines and form-dependent methods marked `invisible` so only real entry points show up in the Run Method dialog.

## Points of Interest

| File | Why it's worth reading |
|------|-------------------------|
| `Project/Sources/Methods/00_Start.4dm` | The splash/startup pattern: worker dispatch, window reuse, non-blocking dialog. |
| `Project/Sources/Forms/HDI2/ObjectMethods/Picture.4dm` + `Methods/AnimalTips.4dm` | Dynamic help tip text driven by mouse position. |
| `Project/Sources/Methods/TipStatus.4dm` | Toggling tips on/off via `SET DATABASE PARAMETER`. |
| `Project/Sources/Forms/HDI2/ObjectMethods/Tab Control.4dm`, `Button.4dm` | Applying delay/duration parameters entered on the form. |
| `Project/Sources/styleSheets.css`, `styleSheets_mac.css` | Dark mode and Liquid Glass adaptation via form-theme/colour-scheme media queries. |
| `Resources/*.lproj/*.xlf` | XLIFF localisation structure (menus, per-form, messages), in English and Japanese. |

## Requirements

4D 21 or later (project mode, `.4DProject`).

## Origin

Converted from a binary `.4DB` example database originally distributed with 4D, using 4D 21's built-in binary-to-project conversion tool, then modernised.

## References

- **Blog post:** https://blog.4d.com/finely-control-tips-in-4d/
- **Original download:** https://downloads.4d.com/Demos/4D_v16_R4/HDI_Tips.zip
- `SET DATABASE PARAMETER`: https://developer.4d.com/docs/commands/set-database-parameter
- `OBJECT SET HELP TIP` / `OBJECT Get help tip`: https://developer.4d.com/docs/commands/object-set-help-tip
- CSS in 4D (dark mode, Liquid Glass): https://developer.4d.com/docs/FormEditor/stylesheets
- XLIFF localisation: https://developer.4d.com/docs/Notions/localization
