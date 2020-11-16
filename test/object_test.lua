---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by wangxiaofeng.
--- DateTime: 2020/11/6 1:18 AM
---

json = require "lib/json"

idCard = {}

idCard["id"] = "33108119851211651X"
idCard["name"] = "王晓丰"
idCard["address"] = "浙江省温岭市滨海镇闸南村59号"
idCard["jobs"] = {"华硕", "HTC", "南京杰游"}

print(idCard["name"])
print(json.encode(idCard))

newCard = {id = "33108119851211651X", name = "王晓丰", address = "浙江省温岭市滨海镇闸南村59号", jobs = {"华硕", "HTC", "南京杰游"}}
print(newCard.name)
print(json.encode(newCard))

tNum = {}
tNum[1] = {}
tNum[1][1] = 1
tNum[1][2] = 2

tNum[2] = {}
tNum[2][1] = 3
tNum[2][2] = 4

print(json.encode(tNum))
objID = json.decode("{\"name\":\"王晓丰\",\"address\":\"浙江省温岭市滨海镇闸南村59号\",\"jobs\":[\"华硕\",\"HTC\",\"南京杰游\"],\"id\":\"33108119851211651X\"}")
print(objID)