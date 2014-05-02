print "Guess a number"
math.randomseed(os.time())
math.random()
number = math.random(100)
--print(number)
while answer ~= number do
    answer = io.read('*n') --Read input from user as a number
    --print(answer)
    if answer < number then
        print "Too Low"
    elseif answer > number then
        print "Too High"
    else 
        print "You got it"
    end
end
