local function split_text(text)
    local parts = {}
    local current_part = ""
    local current_type = nil

    for char in text:gmatch("([%z\1-\127\194-\244][\128-\191]*)") do
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

local function is_mermaid(el)
    return el.classes and el.classes[1] == "mermaid"
end

local function mermaid_to_tikz(mermaid_content)
    local tikz = "\\begin{tikzpicture}[node distance=2cm]\n"
    local nodes = {}
    local edges = {}

    for line in mermaid_content:gmatch("[^\r\n]+") do
        local from, to = line:match("(%w+)%s*%-%->%s*(%w+)")
        if from and to then
            table.insert(nodes, from)
            table.insert(nodes, to)
            table.insert(edges, {from = from, to = to})
        end
    end

    -- Remove duplicates from nodes
    local unique_nodes = {}
    for _, node in ipairs(nodes) do
        unique_nodes[node] = true
    end

    -- Create nodes
    for node, _ in pairs(unique_nodes) do
        tikz = tikz .. string.format("\\node (%s) {%s};\n", node, node)
    end

    -- Create edges
    for _, edge in ipairs(edges) do
        tikz = tikz .. string.format("\\draw[->] (%s) -- (%s);\n", edge.from, edge.to)
    end

    tikz = tikz .. "\\end{tikzpicture}"
    return tikz
end

function CodeBlock(el)
    if is_mermaid(el) then
        local tikz_content = mermaid_to_tikz(el.text)
        return pandoc.RawBlock('latex', tikz_content)
    end
    return el
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