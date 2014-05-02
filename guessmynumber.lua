function getRandomNumber(maxValue)
    math.randomseed(os.time())
    math.random()
    return math.random(maxValue)
end
function handleGuesses(lowMessage,highMessage,number)
--function handleGuesses(...)
    --lowMessage,highMessage,number = ...
    --lowMessage,highMessage,number = ...
    local guesses = {}
    while answer ~= number do
        local answer = io.read('*n') --Read input from user as a number
        guesses[#guesses+1] = answer
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
return guesses    
end
local number = getRandomNumber(100)
print "Guess a number"
local guesses = handleGuesses("Too low","Too high",number)
--print(number)
print "You got it"
--print(answer)

print("Here are your guesses")
for k, v in ipairs(guesses) do
    print(k,v)
end
