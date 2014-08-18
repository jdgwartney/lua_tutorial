Set = {}
-- create a new set with the values of a given list
function Set.new (l)
  local set = {}
  local mt = {}
  setmetatable(set, mt)
  mt.__add = Set.union
  mt.__mul = Set.intersection
  for _, v in ipairs(l) do set[v] = true end
  return set
end
function Set.union (a, b)
  local res = Set.new{}
  for k in pairs(a) do res[k] = true end
  for k in pairs(b) do res[k] = true end
  return res
end
function Set.intersection (a, b)
  local res = Set.new{}
  for k in pairs(a) do
    res[k] = b[k]
  end
  return res
end
-- presents a set as a string
function Set.tostring (set)
  local l = {}     -- list to put all elements from the set
  for e in pairs(set) do
    l[#l + 1] = e
  end
  return "{" .. table.concat(l, ", ") .. "}"
end
-- print a set
function Set.print (s)
  print(Set.tostring(s))
end

set1 = Set.new({1,2,3})
set2 = Set.new({3,4,5})
Set.print(set1 + set2)
Set.print(set1 * set2)

