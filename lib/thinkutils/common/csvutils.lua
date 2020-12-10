---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by wangxiaofeng.
--- DateTime: 2020/12/10 18:42
---

package.path = './?.lua;' .. package.path
local stringutils = require("common.stringutils")

local csvutils = {}

csvutils.csv_2_dictlist = function (szFilePath)
    local nLine = 0
    local lstHeader = {}
    local lstRet = {}

    if stringutils.is_empty(szFilePath) then
        return lstRet
    end

    for szLine in io.lines(szFilePath) do
        nLine = nLine + 1

        if 1 == nLine then
            local lstTemp = stringutils.split(szLine, ",")
            for i = 1, #lstTemp do
                table.insert(lstHeader, #lstHeader + 1, stringutils.trim(lstTemp[i]))
            end
        else
            local dictItem = {}

            local lstTemp = stringutils.split(szLine, ",")
            for i = 1, #lstTemp do
                dictItem[lstHeader[i]] = stringutils.trim(lstTemp[i])
            end

            table.insert(lstRet, dictItem)
        end

    end

    return lstRet
end

local function read_header_from_dict(dictItem)
    local dictHeader = {}
    for k, v in pairs(dictItem) do
        table.insert(dictHeader, k)
    end

    return dictHeader
end

csvutils.dictlist_2_csv = function (lstData, szFilePath)
    if nil == lstData
            or #lstData <= 0
            or stringutils.is_empty(szFilePath) then
        return
    end

    local file = io.open(szFilePath, "w")

    --print(json.encode(lstData[1]))
    local lstHeader = read_header_from_dict(lstData[1])
    --print(json.encode(dictHeader))

    local szHeader = ""
    for i = 1, #lstHeader do
        if 1 == i then
            szHeader = szHeader .. lstHeader[i]
        else
            szHeader = szHeader .. "," .. lstHeader[i]
        end
    end
    szHeader = szHeader .. "\n"

    --print(szHeader)
    file:write(szHeader)

    for i = 1, #lstData do
        local szLine = ""
        local dictItem = lstData[i]
        for i = 1, #lstHeader do
            if 1 == i then
                szLine = szLine .. dictItem[lstHeader[i]]
            else
                szLine = szLine .. "," .. dictItem[lstHeader[i]]
            end
        end
        szLine = szLine .. "\n"

        --print(szLine)
        file:write(szLine)
    end

    file:close()
end

return csvutils