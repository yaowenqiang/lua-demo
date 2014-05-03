CalorieCounter = {count = 0,goal = 2000}
function CalorieCounter:add(amount)
    self.count = self.count + amount
end
function CalorieCounter.didReachGoal()
    return self.count == self.goal
end
function CalorieCounter.new()
    t = t or {}
    setmetatable(t,self)
    self.__index = self
    return t
end
