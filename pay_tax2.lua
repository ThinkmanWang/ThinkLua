
json = require "lib/json"

function init_employee_list()
    local szJson = [[

        [
            {
                "name": "A"
                , "pay": 2800
                , "tax": 0
                , "final": 0
            }
            , {
                "name": "B"
                , "pay": 3800
                , "tax": 0
                , "final": 0
            }
            , {
                "name": "C"
                , "pay": 4800
                , "tax": 0
                , "final": 0
            }
            , {
                "name": "D"
                , "pay": 6800
                , "tax": 0
                , "final": 0
            }
            , {
                "name": "E"
                , "pay": 7500
                , "tax": 0
                , "final": 0
            }
            , {
                "name": "F"
                , "pay": 9500
                , "tax": 0
                , "final": 0
            }
            , {
                "name": "G"
                , "pay": 15000
                , "tax": 0
                , "final": 0
            }
            , {
                "name": "H"
                , "pay": 25000
                , "tax": 0
                , "final": 0
            }
            , {
                "name": "I"
                , "pay": 30000
                , "tax": 0
                , "final": 0
            }
            , {
                "name": "J"
                , "pay": 35000
                , "tax": 0
                , "final": 0
            }
            , {
                "name": "K"
                , "pay": 40000
                , "tax": 0
                , "final": 0
            }
            , {
                "name": "L"
                , "pay": 50000
                , "tax": 0
                , "final": 0
            }
            , {
                "name": "M"
                , "pay": 60000
                , "tax": 0
                , "final": 0
            }
            , {
                "name": "N"
                , "pay": 70000
                , "tax": 0
                , "final": 0
            }
            , {
                "name": "O"
                , "pay": 85000
                , "tax": 0
                , "final": 0
            }
            , {
                "name": "P"
                , "pay": 100000
                , "tax": 0
                , "final": 0
            }
            , {
                "name": "Q"
                , "pay": 1000000
                , "tax": 0
                , "final": 0
            }
        ]

    ]]

    return json.decode(szJson)
end

---
---程序正式开始
---
g_lstEmployee = init_employee_list()
print(json.encode(g_lstEmployee))

---
--- TODO list
--- 1. 算出g_lstEmployee 中每个人的所得税和税后收入, 并更新g_lstEmployee
---      1.1.用json格式print出来, 类似这样: [{"final":0,"pay":2800,"name":"A","tax":0},{"final":0,"pay":3800,"name":"B","tax":0}.......略.....]
--- 2. 公司来了个牛人, 要求工资是税后至少35000, 问: 他税前工资至少是多少?
--- 3. 公司又来了个牛人, 要求工资是税后至少78000, 问: 他税前工资至少是多少?
---

--计算个人所得税=应纳税所得额*税率-速算扣除数
--本级速算扣除数=上级最高所得额*（本级税率-上级税率）+上级速算扣除数
function personal_tax(money)
    local p_tax = 0
    for i, v in pairs (money) do
        if v>0 and v<= 3000 then
            p_tax = money*0.03
        elseif v>3000 and v<=12000 then
            p_tax = (money-3000)*0.1 -210
        elseif v>12000 and v<=25000 then
            p_tax = (money-12000)*0.2 -1410
        elseif v>25000 and v<=35000 then
            p_tax = (money-25000)*0.25 -2660
        elseif v>35000 and v<=55000 then
            p_tax = (money-35000)*0.3 -4410
        elseif v>55000 and v<=80000 then
            p_tax = (money-55000)*0.35 -7160
        elseif v>80000 then
            p_tax = (money-80000)*0.45 -15160
        else
            print("负工资")
        end
    end
end


--计算税后工资


--打印表格
for i = 1, #g_lstEmployee do
    print(g_lstEmployee[i]["name"])
    print(g_lstEmployee[i]["pay"])
    print(g_lstEmployee[i]["tax"])
    print(g_lstEmployee[i]["final"])
end


--税后35000，求税前工资
for x = 35000,50000 do
    for y = 35000,50000 do
        if x>=35000 and (y-35000)*0.3-4410 == x then
            print(y)
        end
    end
end


--税后78000，求税前工资