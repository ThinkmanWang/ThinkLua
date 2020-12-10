---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by wangxiaofeng.
--- DateTime: 2020/12/10 13:27
---

local stringutils = {}

stringutils.split = function (s, p)
    local rt= {}
    string.gsub(s, '[^'..p..']+', function(w) table.insert(rt, w) end )

    return rt
end

stringutils.trim = function (s)
    return (s:gsub("^%s*(.-)%s*$", "%1"))
end

stringutils.is_empty = function (szTxt)
    return nil == szTxt or #(stringutils.trim(szTxt)) <= 0
end

return stringutils