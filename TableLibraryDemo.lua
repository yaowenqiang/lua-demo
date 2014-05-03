--[[

stack = {}
table.insert(stack,32)
print(unpack(stack))
table.insert(stack,15)
print(unpack(stack))
v = table.remove(stack)
print(unpack(stack))
print(v)

queue = {}
table.insert(queue,1,"Joe")
table.insert(queue,1,"Mary")
table.insert(queue,1,"Bob")
print(unpack(queue))
table.remove(queue)
print(unpack(queue))
table.remove(queue)
print(unpack(queue))
--]]
list  = {1,3,5,6,6,5,4,2,7,8,9,0}
table.sort(list)
print(unpack(list))
