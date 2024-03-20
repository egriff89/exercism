local cars = {}

-- returns the amount of working cars produced by the assembly line every hour
---@param production_rate number
---@param success_rate number
---@return number
function cars.calculate_working_cars_per_hour(production_rate, success_rate)
    return (production_rate * success_rate) / 100
end

-- returns the amount of working cars produced by the assembly line every minute
---@param production_rate number
---@param success_rate number
---@return number
function cars.calculate_working_cars_per_minute(production_rate, success_rate)
    local cars_per_hour = cars.calculate_working_cars_per_hour(production_rate, success_rate)
    return cars_per_hour // 60
end

-- returns the cost of producing the given number of cars
---@param cars_count number
---@return number
function cars.calculate_cost(cars_count)
    local cost_per_ten = 95000
    local cost_singular = 10000

    local groups_of_10 = cars_count // 10
    local singular = cars_count % 10
  
    return (groups_of_10 * cost_per_ten) + (singular * cost_singular)
end

return cars
