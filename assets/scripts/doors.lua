local doors = {}

local number = 1 
local candy = 0

local doorTable = {}

function doors.getDoor()
    return number
end

function doors.nextDoor()
    number = number + 1
end

function doors.prevDoor()
    if number > 1 then
        number = number - 1
    end
end

function doors.getDoorInfo()
    return doorTable[number]
end

function doors.increaseCandy()
    if doorTable[number] then

    else
        doorTable[number] = true
        candy = candy + 1
    end
end

function doors.getCandy()
    return candy
end

return doors