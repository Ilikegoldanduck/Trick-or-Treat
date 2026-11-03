local doors = {}

local number = 1 
local candy = 0

local doorTable = {

}

function doors.getDoor()
    return number
end

function doors.nextDoor()
    number = number + 1
end

function doors.prevDoor()
    number = number - 1
end

function doors.getDoorInfo()
    return doorTable[number]
end

function doors.increaseCandy()
    candy = candy + 1
end

function doors.getCandy()
    return candy
end

return doors