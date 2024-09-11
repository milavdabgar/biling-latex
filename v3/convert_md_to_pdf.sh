#!/bin/bash

# Check if input file is provided
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <input_markdown_file>"
    exit 1
fi

input_file="$1"
output_file="${input_file%.*}.pdf"

# Run pandoc command with necessary parameters
pandoc "$input_file" \
    -o "$output_file" \
    --pdf-engine=xelatex \
    --template=custom_template.tex \
    -V mainfont="Noto Sans Gujarati" \
    -V monofont="Noto Sans Gujarati" \
    -V fontsize=12pt \
    -V geometry:margin=1in \
    -V documentclass=article \
    -V papersize=a4 \
    -V classoption=onecolumn \
    --highlight-style=tango \
    -f markdown+smart \
    --listings \
    -V header-includes="\usepackage{fontspec}
    \setmainfont[Path=Noto_Sans_Gujarati/static/, Extension=.ttf, UprightFont=*-Regular, BoldFont=*-Bold, ItalicFont=*-Regular, BoldItalicFont=*-Bold, Script=Gujarati]{NotoSansGujarati}
    \setmonofont[Path=Noto_Sans_Gujarati/static/, Extension=.ttf, UprightFont=*-Regular, BoldFont=*-Bold, ItalicFont=*-Regular, BoldItalicFont=*-Bold, Script=Gujarati]{NotoSansGujarati}"

echo "Conversion complete. Output file: $output_file"