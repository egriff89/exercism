local TwoFer = {}

---@param name string
---@return string
function TwoFer.two_fer(name)
    if name == nil then
        return 'One for you, one for me.'
    end

    return 'One for ' .. name .. ', one for me.'
end

return TwoFer
