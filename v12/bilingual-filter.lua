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