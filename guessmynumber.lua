function getRandomNumber(maxValue)
    math.randomseed(os.time())
    math.random()
    return math.random(maxValue)
end
function handleGuesses(lowMessage,highMessage,number)
--function handleGuesses(...)
    --lowMessage,highMessage,number = ...
    --lowMessage,highMessage,number = ...
    while answer ~= number do
        local answer = io.read('*n') --Read input from user as a number
        --print(answer)
        if answer < number then
            print(lowMessage)
        elseif answer > number then
            print(highMessage)
        else 
            break
        end
        print "Guess again"
    end
    
end
local number = getRandomNumber(100)
print "Guess a number"
handleGuesses("Too low","Too high",number)
--print(number)
print "You got it"
--print(answer)
