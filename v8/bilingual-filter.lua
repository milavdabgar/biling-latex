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