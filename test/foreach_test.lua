
print("======================1=========================")
function test1()
    for i = 1, 10000, 1 do
        if 0 == ((i + 1) * 3 / 2 + 40) / 4 - 25 then
            print("老师" .. i .. "岁")
        end
    end
end
test1()

print("======================2=========================")
function test2()
    for x = 0, 168, 1 do
        for y = 0, 168, 1 do
            if 168 == x + y
                    and 76 == x / 8 + y * 3 / 4
            then
                print(x, y)
            end
        end
    end
end
test2()

print("======================3=========================")
function test3()
    local nSteps = 1
    while true do
        if 1 == nSteps % 2
                and 2 == nSteps % 3
                and 4 == nSteps % 5
                and 5 == nSteps % 6
                and 0 == nSteps % 7
        then
            print("楼梯 " .. nSteps .. " 阶")
            break
        end

        nSteps = nSteps + 1
    end
end
test3()

print("======================4=========================")
function test4()
    --假设 1分X个, 2分Y个, 5分Z个
    for x = 1, 100, 1 do
        for y = 1, 50, 1 do
            for z = 1, 20, 1 do
                if 100 == 1 * x + 2 * y + 5 * z then
                    print(string.format("1分%d个, 2分%d个, 5分%d个", x, y, z))
                end
            end
        end
    end
end
test4()

function isprime(nNum)
    if 1 == nNum then
        return false
    end

    if 2 == nNum then
        return true
    end

    if 0 == nNum % 2 then
        return false
    end

    for x = 2, nNum / 2, 1 do
        if nNum % x == 0 then
            return false
        else

        end
    end

    return true
end

print("======================5=========================")
function goldbach(nNum)
    for i = 3, nNum - 1, 2 do
        local a = i
        local b = nNum - i
        if isprime(a) and isprime(b) then
            print(string.format("%d = %d + %d", nNum, a, b))
        end
    end
end
goldbach(200)

print("======================6=========================")
function test6()
    --假设 大马是X匹, 中马Y匹, 小马Z匹
    for x = 1, 34, 1 do
        for y = 1, 50, 1 do
            for z = 1, 200, 1 do
                if 100 == 3 * x + 2 * y + z/2 and 100 == x + y + z then
                    print(string.format("大马: %d 中马: %d 小马: %d", x, y, z))
                end
            end
        end
    end
end
test6()


print("======================7=========================")
function test7()
    --假设 公鸡是X只, 母鸡Y只, 小鸡Z只
    for x = 1, 20, 1 do
        for y = 1, 34, 1 do
            for z = 1, 300, 1 do
                if 100 == 5 * x + 3 * y + z/3 and 100 == x + y + z then
                    print(string.format("公鸡: %d 母鸡: %d 小鸡: %d", x, y, z))
                end
            end
        end
    end
end
test7()

print("======================8=========================")
function test8()
    --假设 个位数是X, 十位数Y, 百位数是Z
    for x = 0, 9, 1 do
        for y = 0, 9, 1 do
            for z = 0, 9, 1 do
                if x > z and z > y and x + y + z == x * y * z then
                    print(z * 100 + y * 10 + x)
                end
            end
        end
    end
end
test8()

print("======================9=========================")
function test9()
    for a = 1, 50, 1 do
        for b = 1, 50, 1 do
            if 50 == a + b and 180 == 8 * a - 3 * b then
                print(string.format("A种票: %d, B种票: %d", a, b))
            end
        end
    end
end
test9()

print("======================10=========================")
function test10()
    --假设 个位数是X, 十位数Y, 百位数是Z
    for x = 0, 9, 1 do
        for y = 0, 9, 1 do
            for z = 1, 9, 1 do
                if x^3 + y^3 + z^3 == z * 100 + y * 10 + x then
                    print(z * 100 + y * 10 + x)
                end
            end
        end
    end
end
test10()