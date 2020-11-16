
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
--- 1. 算出g_lstEmployee 中每个人的所得税和税后收入
--- 2. 公司来了个牛人, 要求工资是税后至少35000, 问: 他税前工资至少是多少?
--- 3. 公司又来了个牛人, 要求工资是税后至少78000, 问: 他税前工资至少是多少? 
---

