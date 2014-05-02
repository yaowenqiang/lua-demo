function getRandomNumber(maxValue)
    math.randomseed(os.time())
    math.random()
    return math.random(maxValue)
end
local number = getRandomNumber(100)
print "Guess a number"
--print(number)
while answer ~= number do
    local answer = io.read('*n') --Read input from user as a number
    --print(answer)
    if answer < number then
        print "Too Low"
    elseif answer > number then
        print "Too High"
    else 
        break
    end
    print "Guess again"
end
print "You got it"
--print(answer)
