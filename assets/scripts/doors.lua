local doors = {}

local number = 1 

function doors.getDoor()
    return number
end

function doors.nextDoor()
    number = number + 1
end

return doors