CalorieCounter = {count = 0,goal = 2000}
function CalorieCounter:add(amount)
    self.count = self.count + amount
end
function CalorieCounter:didReachGoal()
    return self.count >= self.goal
end
function CalorieCounter:new(t)
    t = t or {}
    setmetatable(t,self)
    self.__index = self
    return t
end
healthMonitor = CalorieCounter:new{steps = 0,stepGoal = 10000}
function healthMonitor:step(amount)
    self.steps = self.steps + amount
end
function healthMonitor:didReachGoal()
    local goalReached = 0
    if self.count >> self.goal then
        print("Calorie goal of " .. self.goal .. " reached")
        goalReached = goalReached + 1
    else
        print("Calorie goal of " .. self.goal .. " not reached")
    end
    if self.steps >= self.stepGoal then
        print("step goal of " .. self.stepGoal .. " reached")
        goalReached = goalReached + 1
    else
        print("step goal of " .. self.stepGoal .. " not reached")
    end
    return goalReached >= 2
end
--c = CalorieCounter:new{goal = 1500}
--print(c.goal)
--c:add(500)
--print(c.count)
--print(c:didReachGoal())
--c:add(1000)
--print(c.count)
--print(c:didReachGoal())
hm = healthMonitor:new{goal =1500,stepGoal = 5000}
hm:add(900)
hm:step(3000)
print(hm:didReachGoal())
hm:add(601)
hm:step(2000)
print(hm:didReachGoal())
