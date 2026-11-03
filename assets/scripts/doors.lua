local doors = {}

local number = 1 
local candy = 0

local doorTable = {}

local interactions = {
    {"He gave you candy, what a nice guy!", 1, false},
    {"Woah! A second candy! You're so lucky!", 2, false},
    {"No one's here. But there's candy outside!", 1, false},
    {"This b- I mean the lights are off! I don't think anyone's home.", 0, false},
    {"Huh... No candy..? Again..?", 0, false},
    {"What the f- Yo this is too much decorations", 0, false},
    {"Well this house has candy :D", 1, false}
}

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
    if interactions[number][3] then
        return "No double dipping!!!"
    else
        return interactions[number][1]
    end
end

function doors.increaseCandy()
    if interactions[number][3] then

    else
        interactions[number][3] = true
        candy = candy + interactions[number][2]
    end
end

function doors.getCandy()
    return candy
end

return doors