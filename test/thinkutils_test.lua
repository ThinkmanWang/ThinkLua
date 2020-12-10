---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by wangxiaofeng.
--- DateTime: 2020/12/10 11:50
---
---

package.path = './lib/thinkutils/?.lua;' .. package.path

json = require "lib/json"
thinkutils = require "lib.thinkutils.thinkutils"

print(thinkutils.common.datetime.timestamp())
print(thinkutils.common.datetime.today())
print(thinkutils.common.datetime.now())
print(thinkutils.common.datetime.diff_day(-3))
print(thinkutils.common.datetime.hour())
print(thinkutils.common.datetime.date_2_timestamp("2020-01-01"))
print(thinkutils.common.datetime.datetime_2_timestamp("2020-01-01 12:13:14"))

print("first day: " .. thinkutils.common.datetime.firstday_of_month("2020-01-05"))
print("last day: " .. thinkutils.common.datetime.lastday_of_month("2020-01-31"))

print("first day: " .. thinkutils.common.datetime.firstday_of_month("2020-12-05"))
print("last day: " .. thinkutils.common.datetime.lastday_of_month("2020-12-05"))

print("first day: " .. thinkutils.common.datetime.firstday_of_month("2020-11-15"))
print("last day: " .. thinkutils.common.datetime.lastday_of_month("2020-11-05"))

print(json.encode(thinkutils.common.datetime.date_between_start_end("2020-10-25", "2020-11-03")))


print(json.encode(thinkutils.common.string.split("2020-12-13", "-")))

local lstCsv = thinkutils.common.csvutils.csv_2_dict_list("test/test.csv")
print(thinkutils.common.json.encode(lstCsv))