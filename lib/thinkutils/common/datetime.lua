---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by wangxiaofeng.
--- DateTime: 2020/12/10 11:46
---

local datetime = {}

datetime.timestamp = function ()
    return os.time()
end

datetime.now = function ()
    return os.date("%Y-%m-%d %H:%M:%S", datetime.timestamp())
end

datetime.today = function ()
    return os.date("%Y-%m-%d", datetime.timestamp())
end

return datetime