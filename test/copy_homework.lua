---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by wangxiaofeng.
--- DateTime: 2020/10/25 4:29 PM
---

socket = require("socket")

function sleep(sec)
    socket.select(nil, nil, sec)
end

function randNumber(nStart, nStop)
    math.randomseed(tostring(socket.gettime()):reverse():sub(1, 6))
    return math.random(nStart, nStop)
end

function canRepeat()
    nRand = randNumber(1, 100)
    if nRand >= 90 then
        return true
    else
        return false
    end
end

function copy10()
    for x = 1, 10, 1 do
        print("抄作业第" .. x .. "遍")
    end
end

function copyUntilCanRepeat()
    nTime = 1
    while canRepeat() == false do
        --sleep(1)
        print("抄作业" .. nTime .. "遍")
        nTime = nTime + 1
    end

    print("终于背出来了, 啦啦啦")
end

copy10()
print("===============华丽的分割线===============")
copyUntilCanRepeat()