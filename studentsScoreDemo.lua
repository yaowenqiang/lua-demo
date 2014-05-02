local grade = {}
while true do
    print "Enter student name (q to quit)"
    local name = io.read()
    if name == 'q' then
        break;
    end
    print "Enter student score"
    local score = io.read("*n","*l")
    grade[name] = score
end
print "Printing grade"
for k, v in pairs(grade) do
    print "Grade:"
    print(k,v)
end
