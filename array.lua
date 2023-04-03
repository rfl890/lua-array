local Array = {}

function Array:new(b)
    local base = b or {}
    setmetatable(base, self)
    self.__index = self
    return base
end

function Array:forEach(callbackFn)
    for i, v in ipairs(self) do
        callbackFn(v, i)
    end
end

function Array:map(callbackFn)
    local newArr = Array:new({})
    for i, v in ipairs(self) do
        local newValue = callbackFn(v, i)
        newArr[i] = newValue
    end
    return newArr
end

function Array:filter(filterFn)
    local newArr = Array:new({})
    for i, v in ipairs(self) do
        local pass = filterFn(v, i)
        if pass then
            table.insert(newArr, v)
        end
    end
    return newArr
end

return Array
