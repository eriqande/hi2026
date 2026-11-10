#!/usr/bin/env bash
set -euo pipefail

# Resolve paths relative to this script, so it works from any directory.
project_dir="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
cd "$project_dir"

if ! command -v quarto >/dev/null 2>&1; then
  echo "Quarto is required: https://quarto.org/docs/get-started/" >&2
  exit 1
fi

echo "Rendering the workshop website..."
quarto render

echo "Rendering the workshop slides..."
(
  cd slides
  quarto render
)

# Copy after rendering the website, which can clean its output directory.
# Include assets, styles, and Reveal.js/KaTeX dependencies, not just HTML.
mkdir -p docs/slides
cp -R slides/_output/. docs/slides/

echo "Build complete: docs/ (including docs/slides/)."
echo "Commit and push the updated docs/ directory to publish on GitHub Pages."
