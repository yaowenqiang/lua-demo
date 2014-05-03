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
meta.__index = function(table,key)
    if key == "reverse" then
        return string.reverse(table.s)
    end
end

firstname = ss.new("Bill")
lastname = ss.new("Gates")
print(firstname + lastname)
print(firstname.reverse )
--print(firstname.s)
