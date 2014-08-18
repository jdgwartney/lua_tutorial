function newpoly(coefficients)

  return function (x)
    local answer = 0
    for k,v in pairs(coefficients)
    do
      answer = answer + v * x^math.abs(k-#coefficients)
    end
    return answer
  end
end

f = newpoly({3, 0, 1})
print(f(0))
print(f(5))
print(f(10))
