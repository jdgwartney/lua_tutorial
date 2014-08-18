#!/usr/bin/env lua

function f(x)
  return x
end
x = 100
for i = 1, f(x) do print(i) end
for i = 10, 1, -1 do print(i) end

a = {9,8,7,6,5,4,3,2,1,0,-1}
-- find a value in a list
local found = nil
for i = 1, #a do
  if a[i] < 0 then
    found = i
    break
  end end
print(found)


-- print all values of table 't'
for k, v in pairs(a) do print(k, v) end

days = {"Sunday", "Monday", "Tuesday", "Wednesday","Thursday", "Friday", "Saturday"}

revDays = {}
for k,v in pairs(days) do
  revDays[v] = k
end

 x = "Tuesday"
 print(revDays[x])    --> 3

