# Home Assistant Add-on: Spoolman

Spoolman is an open-source filament management software for 3D printers, created by Donkie.

## Features
- Track filaments, spools, and vendors with precision.
- Automatic weight deduction with SpoolmanSync, Bambu Lab, Klipper, and OctoPrint.
- Fully persistent SQLite database stored in `/config/spoolman/spoolman.db`.
- Exposes port `8000` for REST API and Web UI.

## Configuration
- `tz`: Set your local timezone (e.g. `UTC`, `UTC+3`, `Europe/Kyiv`, `America/New_York`).
