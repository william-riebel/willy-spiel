function willy(string)
    tostring(string)
    local last = ""
    for i = 1, #string do
        local current = string.sub(string, i, i) 
        if current == last or current == string.lower(last) or current == string.upper(last) then
            return true
        end
        last = current
    end
    return false
end


if type(arg[1]) == "string" then
    io.write(tostring(willy(arg[1])))
else
    io.write("Willy mag das: ")
    io.write(tostring(willy("\n" .. io.read())))
end