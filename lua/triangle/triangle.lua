local triangle = {}

---@param a number
---@param b number
---@param c number
---@return boolean
function triangle.valid(a, b, c)
    return (a + b >= c) and (b + c >= a) and (a + c >= b)
end

---@param a number
---@param b number
---@param c number
---@return string
function triangle.kind(a, b, c)
    assert(a > 0 and b > 0 and c > 0, "Input Error")
    assert(triangle.valid(a, b, c), "Input Error")

    if a == b and b == c then
        return "equilateral"
    elseif a == b or b == c or a == c then
        return "isosceles"
    end

    return "scalene"
end

return triangle
