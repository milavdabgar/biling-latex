

## Version 8 

```markdown
# sample.md

## 1333203 DSA Winter 2023

### Q1a: Define linked list. List different types of linked list. (03 marks)

**Ans 1a:**
A linked list is a dynamic data structure consisting of a sequence of elements, where each element (called a node) contains data and a reference (or link) to the next element in the sequence. Unlike arrays, linked lists do not store elements in contiguous memory locations, allowing for efficient insertion and deletion operations.

Key characteristics of linked lists:

- Dynamic size: Can grow or shrink during program execution
- Non-contiguous memory allocation: Elements can be stored anywhere in memory
- Efficient insertion and deletion: O(1) time complexity for operations at the beginning or end

Different types of linked lists:

1. **Singly Linked List**:
   - Each node contains data and a single reference to the next node
   - Last node points to NULL, indicating the end of the list

2. **Doubly Linked List**:
   - Each node contains data and two references: one to the next node and one to the previous node
   - Allows traversal in both directions

3. **Circular Linked List**:
   - Similar to singly linked list, but the last node points back to the first node
   - Forms a closed loop

4. **Circular Doubly Linked List**:
   - Combines features of doubly linked and circular linked lists
   - Last node's next pointer points to the first node, and first node's previous pointer points to the last node

5. **Header Linked List**:
   - Contains a special header node at the beginning
   - Header node may store metadata about the list (e.g., size, pointers to first and last elements)


### પ્રશ્ન 1અ: લીન્કડ લીસ્ટની વ્યાખ્યા આપો. વિવિધ પ્રકારના લિન્ક્ડ લીસ્ટ ની યાદી આપો. (૦૩ ગુણ)

**જવાબ 1અ:**
linked list એ એક ડાયનેમિક ડેટા સ્ટ્રક્ચર છે જેમાં એલિમેન્ટ્સનો ક્રમ હોય છે, જ્યાં દરેક એલિમેન્ટ (જેને node કહેવાય છે) ડેટા અને ક્રમમાં આગળના એલિમેન્ટનો સંદર્ભ (અથવા link) ધરાવે છે. એરેઝથી વિપરીત, linked lists એલિમેન્ટ્સને સતત મેમરી સ્થાનોમાં સંગ્રહિત કરતા નથી, જે insertion અને deletion ઓપરેશન્સને કાર્યક્ષમ બનાવે છે.

linked lists ની મુખ્ય લાક્ષણિકતાઓ:

- ડાયનેમિક કદ: પ્રોગ્રામ એક્ઝીક્યુશન દરમિયાન વધી અથવા ઘટી શકે છે
- નોન-કન્ટીગ્યુઅસ મેમરી એલોકેશન: એલિમેન્ટ્સ મેમરીમાં ગમે ત્યાં સ્ટોર કરી શકાય છે
- કાર્યક્ષમ insertion અને deletion: શરૂઆત અથવા અંતમાં ઓપરેશન્સ માટે O(1) સમય જટિલતા

વિવિધ પ્રકારના linked lists:

1. **Singly Linked List**:
   - દરેક node ડેટા અને આગળના node નો એક સિંગલ સંદર્ભ ધરાવે છે
   - છેલ્લું node NULL તરફ પોઈન્ટ કરે છે, જે લિસ્ટના અંતને સૂચવે છે

2. **Doubly Linked List**:
   - દરેક node ડેટા અને બે સંદર્ભો ધરાવે છે: એક આગળના node માટે અને એક પાછલા node માટે
   - બંને દિશાઓમાં ટ્રાવર્સલની મંજૂરી આપે છે

3. **Circular Linked List**:
   - Singly Linked List જેવું જ, પરંતુ છેલ્લું node પ્રથમ node તરફ પાછું પોઈન્ટ કરે છે
   - બંધ લૂપ બનાવે છે

4. **Circular Doubly Linked List**:
   - Doubly Linked અને Circular Linked Lists ની વિશેષતાઓને જોડે છે
   - છેલ્લા node નો next pointer પ્રથમ node તરફ પોઈન્ટ કરે છે, અને પ્રથમ node નો previous pointer છેલ્લા node તરફ પોઈન્ટ કરે છે

5. **Header Linked List**:
   - શરૂઆતમાં એક વિશેષ header node ધરાવે છે
   - Header node લિસ્ટ વિશેના મેટાડેટા સ્ટોર કરી શકે છે (દા.ત., કદ, પ્રથમ અને છેલ્લા એલિમેન્ટ્સના pointers)

```

~~~markdown
# sample_with_code.md

### Question 1(a): Define linear data structure and give its examples. (03 marks)

**Ans 1(a):**
A linear data structure is a type of data organization where elements are arranged in a sequential manner, with each element directly linked to its adjacent elements. Key characteristics of linear data structures include:

- Elements are organized in a linear or sequential order.
- Each element has a unique predecessor and successor, except for the first and last elements.
- Data can be traversed in a single run, i.e., in one pass.

Examples of linear data structures:

1. **Array**: A collection of elements stored in contiguous memory locations.
2. **Linked List**: A sequence of nodes where each node contains data and a reference to the next node.
3. **Stack**: Follows Last-In-First-Out (LIFO) principle for element access.
4. **Queue**: Follows First-In-First-Out (FIFO) principle for element access.

```python
print("Hello")
```

### પ્રશ્ન 1(અ): રેખીય ડેટા સ્ટ્રક્ચર વ્યાખ્યાયિત કરો અને તેના ઉદાહરણો આપો. (૦૩)

**જવાબ 1(અ):**
રેખીય ડેટા સ્ટ્રક્ચર એ ડેટા સંગઠનનો એક પ્રકાર છે જ્યાં elements ક્રમિક રીતે ગોઠવાયેલા હોય છે, જેમાં દરેક element તેના આજુબાજુના elements સાથે સીધી રીતે જોડાયેલો હોય છે. રેખીય ડેટા સ્ટ્રક્ચરની મુખ્ય લાક્ષણિકતાઓમાં સામેલ છે:

- Elements રેખીય અથવા ક્રમિક ક્રમમાં ગોઠવાયેલા હોય છે.
- દરેક element ને અનન્ય પૂર્વગામી અને અનુગામી હોય છે, સિવાય કે પ્રથમ અને છેલ્લા elements.
- ડેટાને એક જ run માં, એટલે કે એક પાસમાં traverse કરી શકાય છે.

રેખીય ડેટા સ્ટ્રક્ચરના ઉદાહરણો:

1. **Array**: સળંગ મેમરી સ્થાનોમાં સંગ્રહિત elements નો સમૂહ.
2. **Linked List**: nodes નો ક્રમ જ્યાં દરેક node માં ડેટા અને આગળના node નો સંદર્ભ હોય છે.
3. **Stack**: Element access માટે Last-In-First-Out (LIFO) સિદ્ધાંતને અનુસરે છે.
4. **Queue**: Element access માટે First-In-First-Out (FIFO) સિદ્ધાંતને અનુસરે છે.

```python
print("Hello")
```

###

~~~

~~~markdown
# sample_with_gu_code.md

### Question 1(a): Define linear data structure and give its examples. (03 marks)

**Ans 1(a):**
A linear data structure is a type of data organization where elements are arranged in a sequential manner, with each element directly linked to its adjacent elements. Key characteristics of linear data structures include:

- Elements are organized in a linear or sequential order.
- Each element has a unique predecessor and successor, except for the first and last elements.
- Data can be traversed in a single run, i.e., in one pass.

Examples of linear data structures:

1. **Array**: A collection of elements stored in contiguous memory locations.
2. **Linked List**: A sequence of nodes where each node contains data and a reference to the next node.
3. **Stack**: Follows Last-In-First-Out (LIFO) principle for element access.
4. **Queue**: Follows First-In-First-Out (FIFO) principle for element access.

```python
print("Hello")
```

```python
print("ટાઇમ કોમ્પ્લેક્ષીટી")
```

### પ્રશ્ન 1(અ): રેખીય ડેટા સ્ટ્રક્ચર વ્યાખ્યાયિત કરો અને તેના ઉદાહરણો આપો. (૦૩)

**જવાબ 1(અ):**
રેખીય ડેટા સ્ટ્રક્ચર એ ડેટા સંગઠનનો એક પ્રકાર છે જ્યાં elements ક્રમિક રીતે ગોઠવાયેલા હોય છે, જેમાં દરેક element તેના આજુબાજુના elements સાથે સીધી રીતે જોડાયેલો હોય છે. રેખીય ડેટા સ્ટ્રક્ચરની મુખ્ય લાક્ષણિકતાઓમાં સામેલ છે:

- Elements રેખીય અથવા ક્રમિક ક્રમમાં ગોઠવાયેલા હોય છે.
- દરેક element ને અનન્ય પૂર્વગામી અને અનુગામી હોય છે, સિવાય કે પ્રથમ અને છેલ્લા elements.
- ડેટાને એક જ run માં, એટલે કે એક પાસમાં traverse કરી શકાય છે.

રેખીય ડેટા સ્ટ્રક્ચરના ઉદાહરણો:

1. **Array**: સળંગ મેમરી સ્થાનોમાં સંગ્રહિત elements નો સમૂહ.
2. **Linked List**: nodes નો ક્રમ જ્યાં દરેક node માં ડેટા અને આગળના node નો સંદર્ભ હોય છે.
3. **Stack**: Element access માટે Last-In-First-Out (LIFO) સિદ્ધાંતને અનુસરે છે.
4. **Queue**: Element access માટે First-In-First-Out (FIFO) સિદ્ધાંતને અનુસરે છે.

```python
print("Hello")
```

```python
print("ટાઇમ કોમ્પ્લેક્ષીટી")
```

###

~~~

### Version 8 Files

```lua
function split_text(text)
    local parts = {}
    local current_part = ""
    local current_type = nil

    for char in text:gmatch(".") do
        local is_gujarati = char:match("[\128-\255]") ~= nil
        local char_type = is_gujarati and "gujarati" or "other"

        if char_type ~= current_type then
            if current_part ~= "" then
                table.insert(parts, {text = current_part, type = current_type})
            end
            current_part = char
            current_type = char_type
        else
            current_part = current_part .. char
        end
    end

    if current_part ~= "" then
        table.insert(parts, {text = current_part, type = current_type})
    end

    return parts
end

function Str(elem)
    local parts = split_text(elem.text)
    local result = {}

    for _, part in ipairs(parts) do
        if part.type == "gujarati" then
            table.insert(result, pandoc.RawInline('latex', '\\textgujarati{' .. part.text .. '}'))
        else
            table.insert(result, pandoc.Str(part.text))
        end
    end

    return result
end
```

```shell
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
    -V CJKmainfont="Noto Sans CJK JP" \
    -V geometry:margin=1in \
    --highlight-style=tango \
    -f markdown+smart \
    --lua-filter=bilingual-filter.lua

echo "Conversion complete. Output file: $output_file"

```

```latex
\documentclass[$if(fontsize)$$fontsize$,$endif$$if(lang)$$babel-lang$,$endif$$if(papersize)$$papersize$paper,$endif$$for(classoption)$$classoption$$sep$,$endfor$]{$documentclass$}
\usepackage{fontspec}
\usepackage{polyglossia}
\usepackage{xcolor}
\usepackage{listings}
\usepackage{fancyvrb}
\usepackage{longtable,booktabs,array}
\usepackage{graphicx}
\usepackage{hyperref}
\usepackage{url}
\usepackage{xltxtra,xunicode}

\setmainlanguage{english}
\setotherlanguage{gujarati}

% Set fonts
\setmainfont{Noto Sans}
\newfontfamily\gujaratifont{Noto Sans Gujarati}[Script=Gujarati]

% Configure listings for code highlighting
\lstset{
    basicstyle=\ttfamily\small,
    breaklines=true,
    columns=flexible,
    keepspaces=true,
    numbers=left,
    numberstyle=\tiny\color{gray},
    showstringspaces=false,
    frame=single,
    framesep=3pt
}

% Define tightlist command
\providecommand{\tightlist}{%
  \setlength{\itemsep}{0pt}\setlength{\parskip}{0pt}}

$if(highlighting-macros)$
$highlighting-macros$
$endif$

% Title, authors, and date
$if(title)$
\title{$title$}
$endif$
$if(author)$
\author{$for(author)$$author$$sep$ \and $endfor$}
$endif$
$if(date)$
\date{$date$}
$endif$

\begin{document}

$if(title)$
\maketitle
$endif$

$for(include-before)$
$include-before$

$endfor$
$if(toc)$
$if(toc-title)$
\renewcommand*\contentsname{$toc-title$}
$endif$
\tableofcontents
$endif$
$if(lot)$
\listoftables
$endif$
$if(lof)$
\listoffigures
$endif$

$body$

$for(include-after)$
$include-after$

$endfor$
\end{document}

```

## Version 11 Files 

```lua
function is_gujarati(char)
    local code = utf8.codepoint(char)
    return code >= 0x0A80 and code <= 0x0AFF
end

function contains_gujarati(text)
    for char in text:gmatch(utf8.charpattern) do
        if is_gujarati(char) then
            return true
        end
    end
    return false
end

function Str(elem)
    local result = {}
    local current_text = ""
    local in_gujarati = false

    for char in elem.text:gmatch(utf8.charpattern) do
        local char_is_gujarati = is_gujarati(char)
        
        if char_is_gujarati ~= in_gujarati then
            if current_text ~= "" then
                if in_gujarati then
                    table.insert(result, pandoc.RawInline('latex', '\\gu{' .. current_text .. '}'))
                else
                    table.insert(result, pandoc.Str(current_text))
                end
            end
            current_text = char
            in_gujarati = char_is_gujarati
        else
            current_text = current_text .. char
        end
    end

    if current_text ~= "" then
        if in_gujarati then
            table.insert(result, pandoc.RawInline('latex', '\\gu{' .. current_text .. '}'))
        else
            table.insert(result, pandoc.Str(current_text))
        end
    end

    return result
end

function Code(elem)
    if contains_gujarati(elem.text) then
        return pandoc.RawInline('latex', '\\begin{gujaraticode}' .. elem.text .. '\\end{gujaraticode}')
    else
        return pandoc.RawInline('latex', '\\InlineCode{' .. elem.text .. '}')
    end
end

function CodeBlock(elem)
    if contains_gujarati(elem.text) then
        return pandoc.RawBlock('latex', '\\begin{gujaraticode}\n' .. elem.text .. '\n\\end{gujaraticode}')
    else
        return pandoc.RawBlock('latex', '\\begin{Verbatim}\n' .. elem.text .. '\n\\end{Verbatim}')
    end
end
```

```shell
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
    --lua-filter=bilingual-filter.lua \
    -V mainfont="NotoSans" \
    -V monofont="NotoSansMono" \
    -V mathfont="NotoSans Math" \
    -V geometry:margin=1in \
    --highlight-style=tango \
    -f markdown+smart

echo "Conversion complete. Output file: $output_file"
```

```latex
\documentclass[12pt,a4paper]{article}

\usepackage{fontspec}
\usepackage{polyglossia}
\usepackage{xcolor}
\usepackage{graphicx}
\usepackage{hyperref}
\usepackage{url}
\usepackage{fancyvrb}

% Define tightlist command
\providecommand{\tightlist}{%
  \setlength{\itemsep}{0pt}\setlength{\parskip}{0pt}}

\setmainlanguage{english}
\setotherlanguage{gujarati}

% Set default font to a Unicode font that covers a wide range of characters
\setmainfont{NotoSans}[
    UprightFont = *-Regular,
    BoldFont = *-Bold,
    ItalicFont = *-Italic,
    BoldItalicFont = *-BoldItalic
]

% Set monospace font for code
\setmonofont{NotoSansMono}[
    UprightFont = *-Regular,
    BoldFont = *-Bold
]

% Set up Gujarati font
\newfontfamily\gujaratifont{NotoSansGujarati}[
    Script=Gujarati,
    UprightFont = *-Regular,
    BoldFont = *-Bold
]

% Define a command to switch to Gujarati
\newcommand{\gu}[1]{{\gujaratifont #1}}

% Custom environment for code blocks with Gujarati support
\DefineVerbatimEnvironment{gujaraticode}{Verbatim}{
    fontfamily=tt,
    formatcom=\let\textnormal\gujaratifont,
    frame=single,
    numbers=left,
    fontsize=\small
}

% Define command for inline code
\newcommand{\InlineCode}[1]{\texttt{#1}}

% Configure Verbatim environment for code blocks
\fvset{
    frame=single,
    numbers=left,
    fontsize=\small
}

\begin{document}

$if(title)$
\title{$title$}
$endif$
$if(author)$
\author{$for(author)$$author$$sep$ \and $endfor$}
$endif$
$if(date)$
\date{$date$}
$endif$

$if(title)$
\maketitle
$endif$

$for(include-before)$
$include-before$

$endfor$
$if(toc)$
$if(toc-title)$
\renewcommand*\contentsname{$toc-title$}
$endif$
\tableofcontents
$endif$

$body$

$for(include-after)$
$include-after$

$endfor$

\end{document}
```

## Version 10 Files

```lua
function is_gujarati(char)
    local code = utf8.codepoint(char)
    return code >= 0x0A80 and code <= 0x0AFF
end

function contains_gujarati(text)
    for char in text:gmatch(utf8.charpattern) do
        if is_gujarati(char) then
            return true
        end
    end
    return false
end

function Str(elem)
    if contains_gujarati(elem.text) then
        return pandoc.RawInline('latex', '\\gu{' .. elem.text .. '}')
    else
        return elem
    end
end

function Code(elem)
    if contains_gujarati(elem.text) then
        return pandoc.RawInline('latex', '\\texttt{\\gu{' .. elem.text .. '}}')
    else
        return elem
    end
end

function wrap_long_lines(text, max_width)
    local lines = {}
    for line in text:gmatch("[^\n]+") do
        if #line > max_width then
            local current_line = ""
            for word in line:gmatch("%S+") do
                if #current_line + #word + 1 > max_width then
                    table.insert(lines, current_line .. "\\fvbreak")
                    current_line = word
                else
                    if current_line ~= "" then
                        current_line = current_line .. " " .. word
                    else
                        current_line = word
                    end
                end
            end
            if current_line ~= "" then
                table.insert(lines, current_line)
            end
        else
            table.insert(lines, line)
        end
    end
    return table.concat(lines, "\n")
end

function CodeBlock(elem)
    local content = elem.text:gsub("([^\n]+)", function(line)
        if contains_gujarati(line) then
            return "\\gu{" .. line .. "}"
        else
            return line
        end
    end)
    content = wrap_long_lines(content, 80)  -- Wrap lines longer than 80 characters
    return pandoc.RawBlock('latex', '\\begin{Verbatim}\n' .. content .. '\n\\end{Verbatim}')
end
```

```shell
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
    --lua-filter=bilingual-filter.lua \
    -V mainfont="NotoSans" \
    -V monofont="NotoSansMono" \
    -V mathfont="NotoSans Math" \
    -V geometry:margin=1in \
    --highlight-style=tango \
    -f markdown+smart

echo "Conversion complete. Output file: $output_file"
```

```latex
\documentclass[$if(fontsize)$$fontsize$,$endif$$if(lang)$$babel-lang$,$endif$$if(papersize)$$papersize$paper,$endif$$for(classoption)$$classoption$$sep$,$endfor$]{$documentclass$}
\usepackage{fontspec}
\usepackage{polyglossia}
\usepackage{xcolor}
\usepackage{fancyvrb}
\usepackage{longtable,booktabs,array}
\usepackage{graphicx}
\usepackage{hyperref}
\usepackage{url}

\setmainlanguage{english}
\setotherlanguage{gujarati}

% Set fonts
\setmainfont{Noto Sans}
\newfontfamily\gujaratifont{Noto Sans Gujarati}[Script=Gujarati]
\setmonofont{Noto Sans Mono}

% Define a command for Gujarati text
\newcommand{\gu}[1]{{\gujaratifont #1}}

% Configure Verbatim environment
\fvset{
  fontsize=\small,
  frame=single,
  numbers=left,
  commandchars=\\\{\}
}

% Define a command for line breaking in Verbatim
\newcommand{\fvbreak}{\\\hspace*{\fill}\linebreak}

% Define tightlist command
\providecommand{\tightlist}{%
  \setlength{\itemsep}{0pt}\setlength{\parskip}{0pt}}

$if(highlighting-macros)$
$highlighting-macros$
$endif$

% Title, authors, and date
$if(title)$
\title{$title$}
$endif$
$if(author)$
\author{$for(author)$$author$$sep$ \and $endfor$}
$endif$
$if(date)$
\date{$date$}
$endif$

\begin{document}

$if(title)$
\maketitle
$endif$

$for(include-before)$
$include-before$

$endfor$
$if(toc)$
$if(toc-title)$
\renewcommand*\contentsname{$toc-title$}
$endif$
\tableofcontents
$endif$
$if(lot)$
\listoftables
$endif$
$if(lof)$
\listoffigures
$endif$

$body$

$for(include-after)$
$include-after$

$endfor$
\end{document}
```

