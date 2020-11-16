
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

--function tax(nPay)
--    if nPay <= 3000 then
--        return nPay * 0.03
--    elseif nPay > 3000 and nPay <= 12000 then
--        return 3000 * 0.03 + (nPay - 3000) * 0.1
--    elseif nPay > 12000 and nPay <= 25000 then
--        return 3000 * 0.03 + 9000 * 0.1 + (nPay - 12000) * 0.2
--    elseif nPay > 25000 and nPay <= 35000 then
--        return 3000 * 0.03 + 9000 * 0.1 + 13000 * 0.2 + (nPay - 25000) * 0.25
--    elseif nPay > 35000 and nPay <= 55000 then
--        return 3000 * 0.03 + 9000 * 0.1 + 13000 * 0.2 + 10000 * 0.25 + (nPay - 35000) * 0.3
--    elseif nPay > 55000 and nPay <= 80000 then
--        return 3000 * 0.03 + 9000 * 0.1 + 13000 * 0.2 + 10000 * 0.25 + 20000 * 0.3 + (nPay - 55000) * 0.35
--    else  -- > 80000
--        return 3000 * 0.03 + 9000 * 0.1 + 13000 * 0.2 + 10000 * 0.25 + 20000 * 0.3 + 25000 * 0.35 + (nPay - 80000) * 0.45
--    end
--end

function tax(nPay)
    if nPay <= 3000 then
        return nPay * 0.03
    elseif nPay > 3000 and nPay <= 12000 then
        return tax(3000) + (nPay - 3000) * 0.1
    elseif nPay > 12000 and nPay <= 25000 then
        return tax(12000) + (nPay - 12000) * 0.2
    elseif nPay > 25000 and nPay <= 35000 then
        return tax(25000) + (nPay - 25000) * 0.25
    elseif nPay > 35000 and nPay <= 55000 then
        return tax(35000) + (nPay - 35000) * 0.3
    elseif nPay > 55000 and nPay <= 80000 then
        return tax(55000) + (nPay - 55000) * 0.35
    else  -- > 80000
        return tax(80000) + (nPay - 80000) * 0.45
    end

end

function get_pay(nFinal)
    local nPay = nFinal

    while nPay - tax(nPay) < nFinal do
        nPay = nPay + 1
    end

    return nPay
end

g_lstEmployee = init_employee_list()
print(json.encode(g_lstEmployee))

for i = 1, #g_lstEmployee do
    g_lstEmployee[i]["tax"] = tax(g_lstEmployee[i]["pay"])
    g_lstEmployee[i]["final"] = g_lstEmployee[i]["pay"] - g_lstEmployee[i]["tax"]
end
print(json.encode(g_lstEmployee))

print("税后工资35000的税前工资是: " .. get_pay(35000))
print("税后工资78000的税前工资是: " .. get_pay(78000))

