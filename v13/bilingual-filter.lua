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

function escape_special_chars(text)
    return text:gsub("([#$%%&_{}])", "\\%1")
end

function Code(elem)
    local content = escape_special_chars(elem.text)
    if contains_gujarati(elem.text) then
        return pandoc.RawInline('latex', '\\texttt{\\gu{' .. content .. '}}')
    else
        return pandoc.RawInline('latex', '\\texttt{' .. content .. '}')
    end
end

function CodeBlock(elem)
    local content = escape_special_chars(elem.text)
    if contains_gujarati(elem.text) then
        return pandoc.RawBlock('latex', '\\begin{gujaraticode}\n' .. content:gsub("(.)", "\\gu{%1}") .. '\n\\end{gujaraticode}')
    else
        return pandoc.RawBlock('latex', '\\begin{Verbatim}\n' .. content .. '\n\\end{Verbatim}')
    end
end