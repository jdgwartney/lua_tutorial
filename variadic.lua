#/usr/bin/env lua

function add (...)
  local s = 0
  for i, v in ipairs{...} do
    s=s+v
  end
  return s
end
print(add(3, 4, 10, 25, 12))


function nonils (...)
  local arg = table.pack(...)
  for i = 1, arg.n do
    if arg[i] == nil then return false end
  end
  return true
end
print(nonils(2,3,nil))
print(nonils(2,3))
print(nonils())
print(nonils(nil))
