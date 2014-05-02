print "Guess a number"
math.randomseed(os.time())
math.random()
local number = math.random(100)
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
print(answer)
