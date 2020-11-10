socket = require("socket")

----------------------
---工具函数. 知道干什么就行, 不用细看
----------------------
function randNumber(nStart, nStop)
    math.randomseed(tostring(socket.gettime()):reverse():sub(1, 6))
    return math.random(nStart, nStop)
end

function sleep(sec)
    socket.select(nil, nil, sec)
end

----------------------
---基类
----------------------
Man = {m_nHeight = 0, m_nWeight = 0, m_nMoney = 0, m_szHouse = "", m_szDescription = ""}
function Man:new(nHeight, nWeight, nMoney, szHouse)
    local self = {}
    setmetatable(self, Man)
    Man.__index = Man

    self.m_nHeight = nHeight or 0
    self.m_nWeight = nWeight or 0
    self.m_nMoney = nMoney or 0
    self.m_szHouse = szHouse or "没有房子"
    self.m_szDescription = "老实本分"

    return self
end

function Man:description()
    local szDesc = string.format("升高: %d.\n体重: %d. \n每年收入: %d. %s. \n前面那些都不重要, 最重要的是这个男人 %s , 很适合结婚过日子\n"
        , self.m_nHeight, self.m_nWeight, self.m_nMoney, self.m_szHouse, self.m_szDescription)

    return szDesc
end

function Man:dangerous()
    return "RUN!!!"
end

function Man:saySomething()
    return "呃...."
end

-----------------------------
---派生类1
-----------------------------
PowerMan = Man:new()
function PowerMan:new(nHeight, nWeight, nMoney, szHouse)
    local self =  Man:new(nHeight, nWeight, nMoney, szHouse)
    setmetatable(self, PowerMan)

    PowerMan.__index = PowerMan

    return self
end

function PowerMan:dangerous()
    return "I'm here, don't be afraid. I will protect you!!!"
end

------------------------------
---派生类2
------------------------------
Playboy = {m_szMsg = "相信我, 我一定会离婚的"}
setmetatable(Playboy, Man)
function Playboy:new(nHeight, nWeight, nMoney, szHouse)
    local self =  Man:new(nHeight, nWeight, nMoney, szHouse)
    setmetatable(self, Playboy)

    Playboy.__index = Playboy

    return self
end

function Playboy:saySomething()
    return self.m_szMsg
end

-------------------
---程序流程相关函数
-------------------
function randMan()
    sleep(1)
    local nNum = randNumber(1, 3)
    if 1 == nNum then
        return Man:new(randNumber(165, 180), randNumber(55, 80), randNumber(100000, 500000))
    elseif 2 == nNum then
        return PowerMan:new(randNumber(165, 180), randNumber(55, 80), randNumber(100000, 500000), "没房, 家里有5亩田")
    elseif 3 == nNum then
        return Playboy:new(randNumber(165, 180), randNumber(55, 80), randNumber(100000, 500000), "上海有幢别墅")
    else
        return Playboy:new(randNumber(165, 180), randNumber(55, 80), randNumber(100000, 500000), "上海有幢别墅")
    end
end

--------------------
---程序从这里开始执行
--------------------
for nCount = 1, 10, 1 do
    print(string.format("第%d次相亲", nCount))
    local man = randMan()

    print(man:description())
    print("相亲时说什么话: " .. man:saySomething())
    print("遇到危险: " .. man:dangerous())

    print("======================\n\n")
end


--local xiaoli = Man:new(176, 65, 300000, "上海有幢别墅")
--print(xiaoli:description())
--print(xiaoli:saySomething())
--print(xiaoli:dangerous())
--
--print("=============")
--local xiaoying = Man:new(173, 62, 240000)
--print(xiaoying:description())
--print(xiaoying:saySomething())
--print(xiaoying:dangerous())
--
--print("=============")
--local xiaoqiang = PowerMan:new(180, 70, 250000)
--print(xiaoqiang:description())
--print(xiaoqiang:saySomething())
--print(xiaoqiang:dangerous())
--
--print("=============")
--local luozhixiang = Playboy:new(180, 70, 1000000)
--print(luozhixiang:description())
--print(luozhixiang:saySomething())
--print(luozhixiang:dangerous())
