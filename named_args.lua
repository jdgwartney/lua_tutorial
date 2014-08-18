#!/usr/bin/env lua



function cat(c)
  local s = ""
  if c.a ~= nil then
    s = s..c.a
  end
  if c.b ~= nil then
    s = s..c.b
  end
  return s
end

print(cat{a="red",b="blue"})