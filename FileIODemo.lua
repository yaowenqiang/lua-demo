--local file = io.open("test.text",'w')
--file:write("Testing 1,2,3\n")
--file:write("abc 123\n")
--file:close()

local file = io.open("test.text","r")
--text = file:read("*a")
    --*a = reads while file
    --*l = reads netx line
    --*n = reads a number
    --x  = read x characters
--print(text)
for line in file:lines() do
    print(line)
end
