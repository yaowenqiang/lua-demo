local meta = {}
local ss = {}
function ss.new(s)
    local superstring = {}
    superstring.s = s
    setmetatable(superstring,meta)
    return superstring
end
firstname = ss.new("Bill")
print(firstname.s)
