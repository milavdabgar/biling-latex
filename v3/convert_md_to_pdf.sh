#!/bin/bash

# Check if input file is provided
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <input_markdown_file>"
    exit 1
fi

input_file="$1"
output_file="${input_file%.*}.pdf"

# Run pandoc command
pandoc "$input_file" \
    -o "$output_file" \
    --pdf-engine=xelatex \
    --template=custom_template.tex \
    -V mainfont="Noto Sans" \
    -V sansfont="Noto Sans" \
    -V monofont="Noto Sans Mono" \
    -V mathfont="Noto Sans Math" \
    -V CJKmainfont="Noto Sans CJK JP"

echo "Conversion complete. Output file: $output_file"
