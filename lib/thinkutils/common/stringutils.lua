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

stringutils.trim = function (szTxt)
    return (szTxt:gsub("^%s*(.-)%s*$", "%1"))
end

stringutils.is_empty = function (szTxt)
    return nil == szTxt or #(stringutils.trim(szTxt)) <= 0
end

stringutils.is_email = function (szTxt)
    return string.match(str,"[%d%a]+@%a+.%a+") == szTxt
end

stringutils.is_number = function (szTxt)
    return string.match(szTxt, "%d+") == szTxt
end

stringutils.is_phone = function (szTxt)
    return string.match(szTxt,"[1][3-9]%d%d%d%d%d%d%d%d%d") == szTxt
end

return stringutils