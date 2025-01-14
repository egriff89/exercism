local ArmstrongNumbers = {}

---@param number number
---@return boolean
function ArmstrongNumbers.is_armstrong_number(number)
    local digits = tostring(number).len(number)
    local sum = 0

    for i in tostring(number):gmatch'.' do
        sum = sum + (tonumber(i) ^ digits)
    end

    return sum == number
end

return ArmstrongNumbers
