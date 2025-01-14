---@param n number
---@return string
return function(n)
    if n % 3 == 0 and n % 5 == 0 and n % 7 == 0 then
        return 'PlingPlangPlong'
    elseif n % 3 == 0 and n % 5 == 0 then
        return 'PlingPlang'
    elseif n % 5 == 0 and n % 7 == 0 then
        return 'PlangPlong'
    elseif n % 3 == 0 and n % 7 == 0 then
        return 'PlingPlong'
    elseif n % 3 == 0 then
        return 'Pling'
    elseif n % 5 == 0 then
        return 'Plang'
    elseif n % 7 == 0 then
        return 'Plong'
    end

    return tostring(n)
end
