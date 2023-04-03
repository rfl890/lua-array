# lua-array
Better arrays for Lua.   

`Array` is just a table, so it works as a drop in replacement of a regular array.

Usage:
```lua
local Array = require("array")
local MyArray = Array:new()
-- push some values (or initialize with :new({1,2,3})
MyArray:push(1)
MyArray:push(2)
MyArray:push(3)
-- map
local squares = MyArray:map(function(v)
    return v * v
end)
-- join
print(MyArray:join("\n"))
```

Iteration:
```lua
local Array = require("array")
local MyArray = Array:new({"A","B","C"})

MyArray:forEach(function(v) 
    print(v)
end)
```

Get a random element:
```lua
local Array = require("array")
local MyArray = Array:new({1,2,3,4,5,6,7,8,9,10})

print(MyArray:getRandomElement())
```

Filter:
```lua
local Array = require("array")
local MyArray = Array:new({1,2,3,4,5,6,7,8,9,10})

local filtered = MyArray:filter(function(v) 
    return v > 5
end)
```

Pop:
```lua
local Array = require("array")
local MyArray = Array:new({"first", "last"})

local removedItem = MyArray:pop() -- "last"
print(MyArray[1]) -- "first"
```

Shift:
```lua
local Array = require("array")
local MyArray = Array:new({"first", "last"})

local removedItem = MyArray:shift() -- "shift"
print(MyArray[1]) -- "last"
```
