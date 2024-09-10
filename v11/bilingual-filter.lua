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