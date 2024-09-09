function is_gujarati(text)
    return text:match("[\128-\255]") ~= nil
end

function Str(elem)
    if is_gujarati(elem.text) then
        return pandoc.RawInline('latex', '\\textgujarati{' .. elem.text .. '}')
    else
        return elem
    end
end
