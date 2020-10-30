
--
--传入字符串s, 将内容根据p来分割, 最后返回table
--例如:
--1. 传入 string_split("123,456,789", ",")
--2. 返回 {"123","456","789"}
--
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
function read_csv(szFilePath)
    local lstData = {}
    for szLine in io.lines(szFilePath) do
        lstContent = string_split(string_trim(szLine), ",")
        table.insert(lstData, lstContent)
    end

    return lstData
end

--
--在终端打印数据
--
function print_data(lstData)
    for i = 1, #lstData, 1 do
        local lstLine = lstData[i]
        print(table.concat(lstLine, ","))
    end
end

g_lstData = read_csv("模拟考试.csv")
print_data(g_lstData)

---数据已经从文件读取出来了, 继续往下写
---
---任务:
---1. 算出每个学生分数的最高分, 最低分, 平均分, 方差
---2. 把学生的原始成绩, 最高分, 最低分, 平均分, 方差, 打印到屏幕上
---3. 挑出平均分>=90分并且方差最小的那个, 去参加国际奥数比赛
---