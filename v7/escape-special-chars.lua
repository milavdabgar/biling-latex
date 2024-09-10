function Code(elem)
  elem.text = elem.text:gsub("([\\{}])", "\\%1")
  return elem
end

function CodeBlock(elem)
  elem.text = elem.text:gsub("([\\{}])", "\\%1")
  return elem
end
