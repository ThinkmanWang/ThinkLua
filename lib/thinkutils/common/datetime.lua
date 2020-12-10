---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by wangxiaofeng.
--- DateTime: 2020/12/10 11:46
---

package.path = './?.lua;' .. package.path
local stringutils = require("common.stringutils")

local datetime = {}

datetime.timestamp = function ()
    return os.time()
end

datetime.now = function ()
    return os.date("%Y-%m-%d %H:%M:%S", datetime.timestamp())
end

datetime.hour = function ()
    local szHour = os.date("%H", datetime.timestamp())
    return tonumber(szHour)
end

datetime.today = function ()
    return datetime.timestamp_2_date(datetime.timestamp())
end

datetime.timestamp_2_date = function (nTimestamp)
    return os.date("%Y-%m-%d", nTimestamp)
end

datetime.date_2_timestamp = function (szDate)
    local lstDate = stringutils.split(szDate, "-")
    return os.time({day=lstDate[3], month=lstDate[2], year=lstDate[1], hour=0, min=0, sec=0})
end

datetime.datetime_2_timestamp = function (szDate)
    local lstDate = stringutils.split(stringutils.split(szDate, " ")[1], "-")
    local lstTime = stringutils.split(stringutils.split(szDate, " ")[2], ":")

    return os.time({day=lstDate[3], month=lstDate[2], year=lstDate[1], hour=lstTime[1], min=lstTime[2], sec=lstTime[3]})
end

datetime.diff_day = function (nDiff)
    local nTimestamp = datetime.timestamp()
    nTimestamp = nTimestamp + nDiff * 3600 * 24

    return datetime.timestamp_2_date(nTimestamp)
end

return datetime