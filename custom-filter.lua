function is_gujarati(str)
    return str:match("[\226\173\128-\226\175\183]")
end

function Str(elem)
    if is_gujarati(elem.text) then
        return pandoc.RawInline('latex', '\\guj{' .. elem.text .. '}')
    end
end

function RawBlock(el)
    if el.text:match("\\tightlist") then
        return {}
    end
    return el
end
