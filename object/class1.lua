---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by wangxiaofeng.
--- DateTime: 2020/11/9 11:04 AM
---

Plane = {m_nWeight = 0}
function Plane.new(self, nWeight)
    self =  self or {}
    setmetatable(self, Plane)
    Plane.__index = Plane

    self.m_nWeight = nWeight or 0

    return self
end

function Plane.takeoff(self, szTxt)
    print(self.m_nWeight)
    print(szTxt)
end

plane = Plane.new(nil, 100)
plane = plane.takeoff(plane,"I'm fly")