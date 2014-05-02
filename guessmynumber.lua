print "Guess a number"
math.randomseed(os.time())
math.random()
number = math.random(100)
--print(number)
answer = io.read('*n') --Read input from user as a number
print(answer)
