#!/usr/bin/env lua

function doCount()
  local i = 0
  while true do
    i = i + 1
    print(i)
    coroutine.yield()
  end
end
co1 = coroutine.create(doCount)
coroutine.resume(co1)

function doSomething(s)
  while true do
    print(s)
    coroutine.yield()
  end
end
co2 = coroutine.create(doSomething)
coroutine.resume(co2,"Hello World!")

coroutine.resume(co2,"Good Bye Cruel World!")

