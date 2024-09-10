function is_gujarati(char)
    local code = utf8.codepoint(char)
    return code >= 0x0A80 and code <= 0x0AFF
end

function split_mixed_text(text)
    local parts = {}
    local current_part = ""
    local current_type = "latin"

    for char in text:gmatch(utf8.charpattern) do
        local char_type = is_gujarati(char) and "gujarati" or "latin"
        
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
    local parts = split_mixed_text(elem.text)
    if #parts == 1 then
        if parts[1].type == "gujarati" then
            return pandoc.RawInline('latex', '\\gu{' .. parts[1].text .. '}')
        else
            return elem
        end
    else
        local result = {}
        for _, part in ipairs(parts) do
            if part.type == "gujarati" then
                table.insert(result, pandoc.RawInline('latex', '\\gu{' .. part.text .. '}'))
            else
                table.insert(result, pandoc.Str(part.text))
            end
        end
        return result
    end
end

function Code(elem)
    local parts = split_mixed_text(elem.text)
    if #parts == 1 then
        if parts[1].type == "gujarati" then
            return pandoc.RawInline('latex', '\\texttt{\\gutt{' .. parts[1].text .. '}}')
        else
            return elem
        end
    else
        local result = {}
        for _, part in ipairs(parts) do
            if part.type == "gujarati" then
                table.insert(result, pandoc.RawInline('latex', '\\texttt{\\gutt{' .. part.text .. '}}'))
            else
                table.insert(result, pandoc.RawInline('latex', '\\texttt{' .. part.text .. '}'))
            end
        end
        return result
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
    local content = ""
    for line in elem.text:gmatch("[^\n]+") do
        local parts = split_mixed_text(line)
        local processed_line = ""
        for _, part in ipairs(parts) do
            if part.type == "gujarati" then
                processed_line = processed_line .. "\\gutt{" .. part.text .. "}"
            else
                processed_line = processed_line .. part.text
            end
        end
        content = content .. processed_line .. "\n"
    end
    content = wrap_long_lines(content, 80)  -- Wrap lines longer than 80 characters
    return pandoc.RawBlock('latex', '\\begin{Verbatim}[commandchars=\\\\\\{\\}]\n' .. content .. '\\end{Verbatim}')
end