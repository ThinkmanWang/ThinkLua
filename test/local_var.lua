json = require "lib/json"

idCard = {}

idCard["id"] = "33108119851211651X"
idCard["name"] = "王晓丰"
idCard["address"] = "浙江省温岭市滨海镇闸南村59号"
idCard["jobs"] = {"华硕", "HTC", "南京杰游"}

print(idCard)
print(json.encode(idCard))
