if GetLocale() ~= "zhCN" then return end

local o = mOnWardrobe
if o.strings == nil then o.strings = {} end
local s = o.strings

s["Page N"] = "第%i页"
s["Refresh Instance"] = "刷新副本"
s["Refresh Items"] = "刷新物品"
s["Current Instance"] = "当前副本"
s["Click Refresh Info"] = "点击上方的%s按钮来读取副本"
s["Progress"] = "进度"
s["Missing Items"] = "缺失物品"
s["Instance"] = "副本"
s["Hide List Option"] = "打开副本时隐藏列表"
s["Refresh Confirmation"] = "继续此操作将导致你游戏卡顿几秒。确定继续？"
s["Yes"] = "是"
s["No"] = "否"
s["Open Options"] = "打开配置选项"
s["Options"] = "选项"
s["Close"] = "关闭"
s["Defaults"] = "默认"
s["General"] = "通用"
s["Debug"] = "调试"
s["Debug Info"] = "这些选项都是试验性的并且可能会导致你的游戏无法运行。谨记此警告。"
s["Disable Progress"] = "关闭进度"
s["Disable Progress Info"] = "应当加速刷新所有物品进度"

s["Refreshing"] = "刷新中"
s["Hide Minimap"] = "隐藏小地图图标"

s["Disable Confirmation"] = "关闭刷新确认"
s["You're beautiful"] = "阳光真强烈"
s["Happy Sunday"] = "天哪你真高!"
s["Other Sources"] = "其他来源"
s["Sources"] = "来源"

s["Completionist Mode"] = "休闲模式"
s["Completionist Mode Info"] = "只有在你获得特定物品后，才会列出物品。"
