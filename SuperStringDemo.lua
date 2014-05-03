local meta = {}
local ss = {}
function ss.new(s)
    local superstring = {}
    superstring.s = s
    setmetatable(superstring,meta)
    return superstring
end
function ss.add(s1,s2)
    return s1.s .. s2.s
end
meta.__add = ss.add

firstname = ss.new("Bill")
lastname = ss.new("Gates")
print(firstname + lastname)
--print(firstname.s)
