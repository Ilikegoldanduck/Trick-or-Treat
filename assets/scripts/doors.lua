local doors = {}

local number = 1 
local candy = 0

local doorTable = {}

local interactions = {
    {"He gave you candy, what a nice guy!", 1, false},
    {"Woah! A second candy! You're so lucky!", 2, false},
    {"Huh... He just challenged you to a game of ZGS(Zombie Ghoul Skeleton)!", "rps", false},
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
    return interactions[number][1]
end

function doors.getDoorAvail()
    return interactions[number][3]
end

function doors.increaseCandy()
    if interactions[number][3] then
        return 0
    else
        interactions[number][3] = true
        if type(interactions[number][2]) == "number" then
            candy = candy + interactions[number][2]
            return interactions[number][2]
        else
            return interactions[number][2]
        end
        
    end
end

function doors.getCandy()
    return candy
end

return doors