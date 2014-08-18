function foo (str)
  if type(str) ~= "string" then
    error("string expected", 2)
  end
  print(str)

end

local status, err = foo({a=1})
     print(status)
     print(err)
