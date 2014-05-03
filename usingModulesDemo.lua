local health = require "CalorieCounterDemo"
local healthMonitor = health.healthMonitor
hm = healthMonitor:new{goal =1500,stepGoal = 5000}
hm:add(900)
hm:step(3000)
print(hm:didReachGoal())
hm:add(601)
hm:step(2000)
print(hm:didReachGoal())

