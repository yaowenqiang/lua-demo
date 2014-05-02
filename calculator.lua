function adder(x,y)
    return x + y
end

function subtractor(x,y)
    return x - y
end

function calculate(x,y,f)
    return f(x,y)
end
print("enter a number")
local x = io.read("*n","*l")
print("Please enter another number")
local y = io.read("*n","*l")
print("Do you want to add or subtract(Type + or -)")
local op = io.read(1,"*l")
if op == '-' then
    operaction = subtractor
else
    operaction = adder
end
print (calculate(x,y,operaction))


