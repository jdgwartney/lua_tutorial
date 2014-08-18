#!/usr/bin/env lua
-- read 10 lines, storing them in a table
a = {}
for i = 1, 10 do
  a[i] = io.read()
end

print(#a)

-- print the lines
for i = 1, #a do
  print(a[i])
end
