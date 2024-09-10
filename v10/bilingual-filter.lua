-- Define Unicode ranges for different scripts
local script_ranges = {
    {0x0A80, 0x0AFF, "\\gujaratifont"},  -- Gujarati
    {0x0900, 0x097F, "\\devanagarifont"},  -- Devanagari
    {0x0980, 0x09FF, "\\bengalifont"},  -- Bengali
    {0x0B80, 0x0BFF, "\\tamilfont"},  -- Tamil
    {0x0C00, 0x0C7F, "\\telagufont"},  -- Telugu
    {0x4E00, 0x9FFF, "\\hanfont"},  -- CJK Unified Ideographs
    {0x3040, 0x309F, "\\japanesefont"},  -- Hiragana
    {0x30A0, 0x30FF, "\\japanesefont"},  -- Katakana
    {0xAC00, 0xD7AF, "\\koreanfont"},  -- Hangul Syllables
    {0x0600, 0x06FF, "\\arabicfont"},  -- Arabic
    {0x0590, 0x05FF, "\\hebrewfont"},  -- Hebrew
    {0x0E00, 0x0E7F, "\\thaifont"},  -- Thai
    {0x0400, 0x04FF, "\\cyrillicfont"},  -- Cyrillic
    {0x0370, 0x03FF, "\\greekfont"},  -- Greek
}

function determine_script(char_code)
    for _, range in ipairs(script_ranges) do
        if char_code >= range[1] and char_code <= range[2] then
            return range[3]
        end
    end
    return ""
end

function Str(elem)
    local result = {}
    local current_script = ""
    local current_text = ""
    
    for _, char in utf8.codes(elem.text) do
        local script = determine_script(char)
        if script ~= current_script then
            if current_text ~= "" then
                if current_script ~= "" then
                    table.insert(result, pandoc.RawInline('latex', current_script .. "{" .. current_text .. "}"))
                else
                    table.insert(result, pandoc.Str(current_text))
                end
            end
            current_script = script
            current_text = char
        else
            current_text = current_text .. char
        end
    end
    
    if current_text ~= "" then
        if current_script ~= "" then
            table.insert(result, pandoc.RawInline('latex', current_script .. "{" .. current_text .. "}"))
        else
            table.insert(result, pandoc.Str(current_text))
        end
    end
    
    return result
end

function Code(elem)
    return pandoc.RawInline('latex', '\\inlinecode{' .. elem.text .. '}')
end

function CodeBlock(elem)
    return pandoc.RawBlock('latex', '\\begin{lstlisting}\n' .. elem.text .. '\n\\end{lstlisting}')
end