#!/bin/bash

# Check if input file is provided
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <input_markdown_file>"
    exit 1
fi

input_file="$1"
output_file="${input_file%.*}.pdf"
template_file="custom_template.tex"
filter_file="language_font_filter.lua"

pandoc "$input_file" \
    -o "$output_file" \
    --pdf-engine=xelatex \
    --template="$template_file" \
    --lua-filter="$filter_file" \
    -V mainfont="Noto Sans" \
    -V monofont="Noto Sans Mono" \
    -V mathfont="Noto Sans Math" \
    -V geometry:margin=1in \
    --highlight-style=tango \
    -f markdown+smart \
    --toc \
    --number-sections

echo "Conversion complete. Output file: $output_file"