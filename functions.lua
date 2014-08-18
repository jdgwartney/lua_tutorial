#!/bin/usr/env lua

a = {p = print}
a.p("Hello World")
print = math.sin
a.p(print(1))
sin = a.p
sin(10, 20)
--> Hello World
-- 'print' now refers to the sine function
--> 0.841470
-- 'sin' now refers to the print function
--> 10      20