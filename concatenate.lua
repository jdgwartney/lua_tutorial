#!/usr/bin/env lua

function concatenate (...)
  local s = ""
  for k,v in ipairs{...} do
    s = s..v
  end
  return s
end

print(concatenate("0","1","2"))