---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by wangxiaofeng.
--- DateTime: 2020/12/30 21:52
---

package.path = './lib/thinkutils/?.lua;' .. package.path
local thinkutils = require "lib.thinkutils.thinkutils"

local a = "123456789009374658693908384576847362527274848552939485"
local b = "76475863736364859439529874592745892345782364571908340193841"

print(thinkutils.common.json.encode(thinkutils.common.string.to_char_list(a)))
print(thinkutils.common.json.encode(thinkutils.common.string.to_asc_list(a)))

print(true)

print(a + b)