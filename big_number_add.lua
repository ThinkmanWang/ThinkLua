---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by wangxiaofeng.
--- DateTime: 2020/12/31 19:15
---

json = require "lib/json"

function string_2_char_list(szTxt)
    local lstRet = {}
    for i = 1, #szTxt do
        table.insert(lstRet, string.char(string.byte(szTxt, i, i)))
    end

    return lstRet
end

function max(a, b)
    if a >= b then
        return a
    else
        return b
    end
end

function big_number_add(numA, numB)
    local lstA = string_2_char_list(numA)
    local lstB = string_2_char_list(numB)

    --print(json.encode(lstA))
    --print(json.encode(lstB))

    local nMaxLength = max(#lstA, #lstB)
    --print(nMaxLength)

    --填充0, 让俩数组长度一致
    for i = 1, nMaxLength - #lstA do
        table.insert(lstA, 1, "0")
    end

    for i = 1, nMaxLength - #lstB do
        table.insert(lstB, 1, "0")
    end

    --print(json.encode(lstA))
    --print(json.encode(lstB))

    --let's do it
    local szRet = ""
    local nCarry = 0 --进位
    for i = #lstA, 1, -1 do
        a = lstA[i]
        b = lstB[i]

        --print(tonumber((tonumber(a) + tonumber(b) + nCarry) % 10))
        szRet = tonumber((tonumber(a) + tonumber(b) + nCarry) % 10) .. szRet
        if tonumber(tonumber(a) + tonumber(b) + nCarry) >= 10 then
            nCarry = 1
        else
            nCarry = 0
        end
    end

    if nCarry >= 1 then
        szRet = tonumber(nCarry) .. szRet
    end

    return szRet
end

local a = "123456789009374658693908384576847362527274848552939485"
local b = "76475863736364859439529874592745892345782364571908340193841"
print(big_number_add(a, b))
print("76475987193153868814188568501130469193144891846756893133326" == big_number_add(a, b))

local c = "109"
local d = "93"
print(big_number_add(c, d))
