
function string_split(s, p)
    local rt= {}
    string.gsub(s, '[^'..p..']+', function(w) table.insert(rt, w) end )
    return rt
end

function string_trim(s)
    return (s:gsub("^%s*(.-)%s*$", "%1"))
end

g_lstScore = {}

function read_file(szFilePath)
    for szLine in io.lines(szFilePath) do
        lstContent = string_split(string_trim(szLine), ",")

        local dictItem = {}
        dictItem["name"] = lstContent[1]
        dictItem["scores"] = {}
        for i = 2, 6, 1 do
            table.insert(dictItem["scores"], tonumber(lstContent[i]))
        end

        table.insert(g_lstScore, dictItem)
    end
end

function print_score()
    print("姓名,考试1,考试2,考试3,考试4,考试5,最低分,最高分,平均分,方差")
    for i = 1, #g_lstScore, 1 do
        local dictItem = g_lstScore[i]
        szTxt = string.format("%s,%s,%s,%s,%s,%s"
            , dictItem["name"]
            , table.concat(dictItem["scores"],",")
            , dictItem["min"]
            , dictItem["max"]
            , dictItem["avg"]
            , dictItem["variance"])
        print(szTxt)
    end
end

function max_score(lstScore)
    local nMax = lstScore[1]

    for i = 1, #lstScore, 1 do
        if lstScore[i] > nMax then
            nMax = lstScore[i]
        end
    end

    return nMax
end

function min_score(lstScore)
    local nMin = lstScore[1]

    for i = 1, #lstScore, 1 do
        if lstScore[i] < nMin then
            nMin = lstScore[i]
        end
    end

    return nMin
end

function avg_score(lstScore)
    local nSum = 0
    for i = 1, #lstScore, 1 do
        nSum = nSum + lstScore[i]
    end
    
    return nSum / #lstScore
end

function check_student_info()
    for i = 1, #g_lstScore, 1 do
        g_lstScore[i]["max"] = max_score(g_lstScore[i]["scores"])
        g_lstScore[i]["min"] = min_score(g_lstScore[i]["scores"])
        g_lstScore[i]["avg"] = avg_score(g_lstScore[i]["scores"])
    end
end

read_file("模拟考试.csv")

check_student_info()
print_score()
