---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by wangxiaofeng.
--- DateTime: 2020/12/9 13:13
---

json = require "lib/json"

szKey1 = "one"
dictTest = {}

dictTest[szKey1] = 1

print(json.encode(dictTest))