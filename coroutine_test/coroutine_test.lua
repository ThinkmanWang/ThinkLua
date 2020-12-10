---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by wangxiaofeng.
--- DateTime: 2020/12/5 01:53
---

local function async(handler)
    local runn = coroutine.running()
    print(runn)
    handler(function()
        --print("do resume " .. runn)
        coroutine.resume(runn)
    end)
    --print("yield")
    --coroutine.yield()
end

function func1(cb)
    print("in func1")
    print("1")
    cb()
end

function func2(cb)
    print("2")
    cb()
end

function func0()
    local runn = coroutine.running()
    local co = coroutine.create(function()
        async(func1)
        async(func2)
    end)
    coroutine.resume(co)
end

local runn = coroutine.running()
print(runn)
func0()
print("FINISH")