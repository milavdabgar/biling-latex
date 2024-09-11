function is_gujarati(text)
    for _, code in utf8.codes(text) do
        if code >= 0x0A80 and code <= 0x0AFF then
            return true
        end
    end
    return false
end

function Str(elem)
    if is_gujarati(elem.text) then
        return pandoc.RawInline('latex', '\\textgujarati{' .. elem.text .. '}')
    else
        return elem
    end
end

function Code(elem)
    if is_gujarati(elem.text) then
        return pandoc.RawInline('latex', '\\mixedcode{' .. elem.text .. '}')
    else
        return elem
    end
end

function CodeBlock(block)
    local lines = {}
    for line in block.text:gmatch("[^\r\n]+") do
        if is_gujarati(line) then
            table.insert(lines, "(*@\\textgujarati{" .. line .. "}@*)")
        else
            table.insert(lines, line)
        end
    end
    
    local language = block.classes[1] or ""
    local begin_env = "\\begin{lstlisting}[language=" .. language .. "]"
    local end_env = "\\end{lstlisting}"
    
    return pandoc.RawBlock('latex', begin_env .. "\n" .. table.concat(lines, "\n") .. "\n" .. end_env)
end