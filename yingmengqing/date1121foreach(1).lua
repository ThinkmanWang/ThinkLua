---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by BBQ.
--- DateTime: 2020/11/20 17:44
---
--1.( ( (王老师年龄+1) *3) /2+40)/4-25=0 王老师多大
--function age()
--    for i = 1, 100 do
--        if ( ( (i+1) *3) /2+40)/4-25 == 0 then
--            return i
--        end
--    end
--end
--print(age())


--2.甲乙和为168，甲1/8与乙3/4和为76，求甲乙各多少
--function test2()
--    for x = 1, 168 do
--        for y = 1, 168 do
--            if x + y == 168 and x/8 + 3*y/4 == 76 then
--                print(x, y)
--            end
--        end
--    end
--end
--test2()
--
--function test2_1()
--    for x = 1, 168 do
--        for y = 1, 168 do
--            if x + y == 168 and x/8 + 3*y/4 == 76 then
--                return x, y
--            end
--        end
--    end
--end
--x, y = test2_1()
--print("x: " .. x .. " y: " .. y)


--3.跨台阶 每步跨二剩一，跨三剩二，五剩四，六剩五，七正好，问有几阶梯
--local x = 1
--while true do
--    if x%2-1==0
--            and x%3-2==0
--            and x%5-4==0
--            and x%6-5==0
--            and x%7==0 then
--        print(x)
--        break
--    end
--    x = x + 1
--end
--
--local x = 1
--while not (x%2-1==0
--            and x%3-2==0
--            and x%5-4==0
--            and x%6-5==0
--            and x%7==0) do
--    x = x + 1
--end
--print(x)


--4.把一元分成一分 两分 五分 （每种至少一枚） 有几种换法
--for x = 1, 98 do
--    for y = 1, 48 do
--        for z = 1, 18 do
--            if 1*x+2*y+5*z == 100 then
--                print(x,y,z)
--            end
--        end
--    end
--end


--5.100匹马 100担货 大马驮3担 中马驮2担 两个小马驮1担 有几个方法 大马中马各几匹 列出组合
--for x = 1, 98 do
--    for y = 1, 98 do
--        for z = 1, 98 do
--            if x + y + z == 100 and 3*x+2*y+z/2 == 100 then
--                    print(x, y, z)
--            end
--        end
--    end
--end


--6.公鸡5元/只 母鸡3元/只 小鸡三只一元  用100元买100只鸡 三只鸡各有一只 几种方法
--array = { }
--for x = 1, 98 do
--    for y = 1, 98 do
--        for z = 1, 98 do
--            if x + y + z == 100 and 5*x+3*y+z/3 == 100 then
--                    print(x, y, z)
--            end
--        end
--    end
--end


--7.有个三位数 个位数比百位数大 百位数比十位数大 各数字之和等于各数字乘积，求这三位数
--for x = 0, 9 do
--    for y = 0, 9 do
--        for z = 1, 9 do
--            if x > z and z > y and x + y + z == x*y*z then
--                print(z * 100 + y * 10 + x)
--            end
--        end
--    end
--end


--8.汽车载客50人 一部分人买成人票8元/张 一部分人买儿童票3元/张 成人票比儿童票多收入180 成人票儿童票各多少人
--for x = 1, 50 do
--    for y = 1, 50 do
--        if x + y == 50 and 8*x-3*y == 180 then
--                print(x, y)
--        end
--    end
--end


--9.打印出所有水仙花数，  如 153=1^3+5^3+3^3
--for x = 0, 9 do
--    for y = 0, 9 do
--        for z = 1, 9 do
--            if x^3+y^3+z^3 == 100*z+10*y+x then
--                    print(z * 100 + y * 10 + x)
--            end
--        end
--    end
--end


--10.二元一次方程：a,b都是正整数 已知求a,b：--a+2b=4--3a+2b=8
--a+2*b == 4
--3*a+2*b == 8
--for a = 0, 10 do
--    for b = 0, 10 do
--        if a+2*b == 4 and 3*a+2*b == 8 then
--            print(a,b)
--        end
--    end
--end

--时间戳
--print(os.time())
--1605948572
--1605948602

 --11.
--for x=0,100 do
--    for y=0,100 do
--        if x-y == 8 and 3*x+y == 36 then
--            print(x,y)
--        end
--    end
--end

--12
--for x = 0,100 do
--    for y = 0,100 do
--        for z = 0,100 do
--            if x+y+z == 12 and x+2*y-z == 6 and 3*x-y+z == 10 then
--                print(x,y,z)
--            end
--        end
--    end
--end

--[[13.二元一次方程: 某校买了甲、乙两种型号的彩电共7台，花去人民币15900元。已知这两种型号的彩电的价格分别是3000元和1300元，
--问该校两种彩电各买了多少台？]]--
--for x = 1,7 do                     --甲3000
--    for y = 1,7 do                 --乙1300
--        if x+y == 7 and 3000*x + 1300*y == 15900 then
--        print(x,y)
--        end
--    end
--end
--answer:  4  3

--[[14.二元一次方程: 某校150名学生参加数学考试，平均每人55分，其中及格的学生人均77分，不及格的学生人均47分。
及格、不及格的学生各有多少人]]--
--for x = 1,150 do                 --及格的人数
--    for y = 1,150 do             --不及格的人数
--        if x+y == 150 and 77*x + 47*y == 55*150 then
--        print(x,y)
--        end
--    end
--end
--answer:  40  110


--[[15.二元一次方程: 某单位召开会议，安排参加会议人员住宿，若每间宿舍住12人，便有34人没有住处；若每间住14人便多出4间宿舍没人住。
求参加会议的人数和宿舍数]]--
--for x = 1,1000 do                --宿舍间数
--    for y = 1,1000 do            --人员人数
--        if 12*x+34 == 14*(x-4) and y == 12*x+34 then
--        print(x,y)
--        end
--    end
--end
--
--for x = 1,1000 do                --宿舍间数
--    for y = 1,1000 do            --人员人数
--        if 12*x+34 == y and y == 14 * (x - 4) then
--        print(x,y)
--        end
--    end
--end
--answer:  45  574


--[[16.有人在林中散步，听到几个强盗在商量怎样分抢来布匹，一名强盗说：“每人分6匹，但剩下5匹。”另一名强盗说：“每人分7匹，可又少8匹。”
问有几个强盗几匹布]]--
--for x = 1,1000 do                --强盗人数
--    for y = 1,1000 do            --布匹数
--        if 6*x+5 == 7*x-8 and y == 6*x+5 then
--        print(x,y)
--        end
--    end
--end
--
--for x = 1,1000 do                --强盗人数
--    for y = 1,1000 do            --布匹数
--        if 6*x+5 == y and 7 * x == y+8 then
--        print(x,y)
--        end
--    end
--end
--answer:13 83


--[[17.三元一次方程: 学生问老师：“您今年多大？”老师风趣地说：“我像你这样大时，你才满周岁；你到我这样大时，我已经37岁了。”
假设老师x岁, 学生y岁, 两者相差z岁, 那么x, y, z分别是多少]]--
--for x = 0,100 do
--    for y = 0,100 do
--        for z = 0,100 do
--            if x-y == y-1 and 37-x == x-y and x-y == z then
--                print(x,y,z)
--            end
--        end
--    end
--end
--answer:25 13 12


--[[18.10年前，小兰妈妈的年龄是小兰年龄的3倍；10年后，妈妈的年龄是小兰年龄的2倍，
问小兰和妈妈现在的年龄各是多少岁]]--
for x = 1,100 do                --小兰年龄
    for y = 1,100 do            --妈妈年龄
        if (3*(x-10)-(x-10) == 2*(x+10)-(x+10) and  y == 2*x+10) or 3*x+10 == 2*(x+10) and y == 2*(x+10) then
        print(x,y)
        end
    end
end

for x = 1,100 do                --小兰年龄
    for y = 1,100 do            --妈妈年龄
        if (x - 10) * 3 == y - 10 and (x+10) * 2 == (y + 10) then
        print(x,y)
        end
    end
end
--answer:10 40 or 30 70


--[[19.某书店向学校推销甲、乙两种素质教育用书，如果原价买这两种书共需1760元，书店推销时甲种书打了8折，乙种书打了7.5折，
结果两种书共少要了400元。问甲、乙两种书原价各需多少钱]]--
--for x = 1,1000 do                --甲
--    for y = 1,1000 do            --乙
--        if 0.2*x+(1760-x)*0.25 == 400 and y == 1760-x then
--        print(x,y)
--        end
--    end
--end
--answer:800 960


--[[20.验证哥德巴赫猜想: 写个函数, 随便给你个正偶数(>=4), 告诉我这个偶数是哪两个质数相加的和, 把所有组合都列出来. 例如:
--10 = 3 + 7
--10 = 5 + 5
--20 = 3 + 17
--20 = 7 + 13
--200 = ? + ? ]]--
function gdbh()
    for i = 1, num,1 do

    end
end

--[[21.华联商场购进甲、乙两种商品后，甲商品加价50％，乙商品加价40％作为标价，后适逢元旦商场搞促销活动，甲商品打八折销售，乙商品打八五折销售。
某顾客购买甲、乙商品各一件，共付款538元，已知商场共盈利88元，求甲、乙两种商品的进价]]--
--for x = 1,1000 do                --甲
--    for y = 1,1000 do            --乙
--        if 0.8*1.5*x+0.85*1.4*y == 538 and x+y+88 == 538 then
--        print(x,y)
--        end
--    end
--end
--answer:250 200

--[[22.某校计划向灾区捐赠图书3500册，实际共捐了4125册，其中初中生比原计划多捐了20％，高中生捐了原计划的115％，
问该校初、高中生实际各捐赠图书多少册]]--
--for x = 1,3500 do                --初中
--    for y = 1,3500 do            --高中
--        if x+y == 3500 and 1.2*x+1.15*y == 4125 then
--        print(x,y)
--        end
--    end
--end
--answer:2000 1500