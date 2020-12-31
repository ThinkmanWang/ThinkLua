
json = require "lib/json"

function string_split(s, p)
    local rt= {}
    string.gsub(s, '[^'..p..']+', function(w) table.insert(rt, w) end )
    return rt
end

--
--去掉string前后的空格, 换行符, TAB符
--
function string_trim(s)
    return (s:gsub("^%s*(.-)%s*$", "%1"))
end

--
--读取文本文件, 将数据保存到table中并返回
--
-- 1. 链接ID  linkid
-- 2. 订单号   orderid
-- 3. 订单状态 orderzt
-- 4. 奖励状态 rewardzt
-- 5. 商品ID  thingsid
-- 6. 商品名称 thingsname
-- 7. 下单时间 ordertime
-- 8. 无效状态 failstate

function read_csv(szFilePath)
    local lstData = {}
    local nLine = 0
    for szLine in io.lines(szFilePath) do
        nLine = nLine + 1
        if 1 == nLine then
        else
            local lstItem = string_split(szLine, ",")
            local dictItem = {}
            dictItem["linkid"] = lstItem[1]
            dictItem["orderid"] = lstItem[2]
            dictItem["orderzt"] = lstItem[3]
            dictItem["rewardzt"] = lstItem[4]
            dictItem["thingsid"] = lstItem[5]
            dictItem["thingsname"] = lstItem[6]
            dictItem["ordertime"] = lstItem[7]
            dictItem["failstate"] = lstItem[8]
            table.insert(lstData, dictItem)
        end
    end
    return lstData
end

g_lstEmployee = read_csv("JD_2020-12-17_data.csv")
print(json.encode(g_lstEmployee))




function key_exists(t, k)
    for key, value in pairs(t) do
        if k == key then
            return true
        end
    end

    return false
end

--分链接
function total_count()
    local dictCount = {}
    for i = 1, #g_lstEmployee do
        if (g_lstEmployee[i]["orderzt"] == "已完成" or g_lstEmployee[i]["orderzt"] == "已付款") and g_lstEmployee[i]["rewardzt"] == "有效" then
            if key_exists(dictCount, g_lstEmployee[i]["linkid"]) then
                dictCount[g_lstEmployee[i]["linkid"]] = dictCount[g_lstEmployee[i]["linkid"]] + 1
            else
                dictCount[g_lstEmployee[i]["linkid"]] = 1
            end
        end
    end
    return dictCount
end

print(json.encode(total_count()))