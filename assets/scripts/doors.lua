local doors = {}

local number = 24
local candy = 0

local doorTable = {}



local interactions = {
    {"He gave you candy, what a nice guy!", 1, false},
    {"Woah! A second candy! You're so lucky!", 2, false},
    {"Huh... She just challenged you to a game of Rock Paper Scissors!", {"rps", 0}, false},
    {"The lights are off! I don't think anyone's home.", 0, false},
    {"This guy just threw all the candy on the ground what D:", {"clickclick", 5}, false},
    {"Well this house has candy :D", 1, false},
    {"He wanted to play a game of... guess the ball...?", {"ballGuess", 0}, false},
    {"Wow, more candy :3", 1, false},
    {"What D: He just stole my candy..", -1, false},
    {"Oooo he just grabbed your candy and... put it in his basket..?\nDon't touch the mines! They eat your memory!!!", {"memoryMatch", -2}, false},
    {"He gave me candy :D", 1, false},
    {"He gave me candy :D", 1, false},
    {"He gave m- Wait... I feel like I went through this already...", 1, false},
    {"WAIT NO-", {"memoryFight", 1}, false},
    {"Why did he just... you know what nevermind. \nAt least this guy gave me candy :D", 1, false},
    {"A... coinflip...?\nI mean gambling never hurt nobody righttt", {"coinFlip", 1}, false},
    {"He gave me candy :D", 1, false},
    {"umm.. are you okay..?", {"stare", 1}, false},
    {"You aren't weird right..?\nI guess I should come inside..?", {"rest", 1}, false},
    {"Finger game..? Chopsticks..? What..?", {"chopsticks", 1}, false},
    {"Oh.. hi.... Do.. you want something..?", {"stare2", 2}, false},
    {"Oh thanks! The most normal guy here in a while...", 1, false},
    {"Oh..? Hi again! Thank you!", 1, false},
    {"Uhm... hi...? Wh-", {"man", 0}, false},
    {"Woah! Four CANDIES????\nTotally not just for convenience", 4, false},
    {"Mwahahahaha!!! I'm the guy that appears when you get 25 candies!! >:3\nIt's time! I.. Challenge... You.... TO..... A...... hugging competition c:", {"hug", 0}, false}
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
            candy = candy + interactions[number][2][2]
            return interactions[number][2][1]
        end
        
    end
end

function doors.getCandy()
    return candy
end

return doors