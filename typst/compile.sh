#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"
typst compile --font-path ./fonts main.typ main.pdf
echo "Wrote main.pdf ($(pdfinfo main.pdf | awk '/Pages/{print $2}') pages)"
