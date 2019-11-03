local f = coroutine.create(function () 
	print("hello coroutine")
end)

print(coroutine.status(f))
coroutine.resume(f)
print(coroutine.status(f))


