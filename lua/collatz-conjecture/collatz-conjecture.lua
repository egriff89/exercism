---@param n number
---@return number
return function(n)
    assert(n > 0, 'Only positive numbers are allowed')
    if n == 1 then
        return 0
    end

    local temp = n
    local steps = 0
    while true do
        if temp == 1 then
            break;
        end

        if temp % 2 == 0 then
            temp = temp / 2
            steps = steps + 1
        else
            temp = (3 * temp) + 1
            steps = steps + 1
        end
    end

    return steps
end
