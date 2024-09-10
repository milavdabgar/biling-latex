local gujarati_range = {start = 0x0A80, ["end"] = 0x0AFF}

function is_gujarati(char)
    local codepoint = char:byte()
    return codepoint >= gujarati_range.start and codepoint <= gujarati_range["end"]
end

function split_text(text)
    local result = {}
    local current_type = "other"
    local current_text = ""

    for _, char in utf8.codes(text) do
        local char_type = is_gujarati(utf8.char(char)) and "gujarati" or "other"

        if char_type ~= current_type then
            if current_text ~= "" then
                table.insert(result, {type = current_type, text = current_text})
            end
            current_type = char_type
            current_text = utf8.char(char)
        else
            current_text = current_text .. utf8.char(char)
        end
    end

    if current_text ~= "" then
        table.insert(result, {type = current_type, text = current_text})
    end

    return result
end

function Str(elem)
    local parts = split_text(elem.text)
    local result = {}

    for _, part in ipairs(parts) do
        if part.type == "gujarati" then
            table.insert(result, pandoc.RawInline('latex', '\\customgujarati{' .. part.text .. '}'))
        else
            table.insert(result, pandoc.RawInline('latex', '\\customenlish{' .. part.text .. '}'))
        end
    end

    return result
end

function Para(elem)
    return pandoc.walk_block(elem, {Str = Str})
end
