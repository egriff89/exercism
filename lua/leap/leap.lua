---@param year integer
---@param number integer
---@return boolean
local divisible = function(year, number)
    return year % number == 0
end

---@param number integer
---@return boolean
local leap_year = function(number)
    if divisible(number, 400) then
        return true
    elseif divisible(number, 100) then
        return false
    elseif divisible(number, 4) then
        return true
    end
    return false
end

return leap_year
