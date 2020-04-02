if not WeakAuras.IsCorrectVersion() then return end

if not(GetLocale() == "zhCN") then
  return
end

local L = WeakAuras.L

-- WeakAuras/Options
	L["-- Do not remove this comment, it is part of this trigger: "] = "-- 不要移除此注释，这是该触发器的一部分："
	L["% of Progress"] = "进度%"
	L["%i auras selected"] = "已选中%i个光环"
	L["%i Matches"] = "%i个符合"
	L["%s - Option #%i has the key %s. Please choose a different option key."] = "%s - 选项#%i已经使用了键%s，请选择一个其他的键。"
	L["%s %s, Lines: %d, Frequency: %0.2f, Length: %d, Thickness: %d"] = "%s %s，行数：%d，频率：%0.2f，长度：%d，粗细：%d"
	L["%s %s, Particles: %d, Frequency: %0.2f, Scale: %0.2f"] = "%s %s，粒子数：%d，频率：%0.2f，缩放：%0.2f"
	L["%s Alpha: %d%%"] = "%s 透明度：%d%%"
	L["%s Color"] = "%s 颜色"
	L["%s Default Alpha, Zoom, Icon Inset, Aspect Ratio"] = "%s 默认透明度，缩放，内嵌图标，宽高比"
	L["%s Inset: %d%%"] = "%s 内嵌：%d%%"
	L["%s is not a valid SubEvent for COMBAT_LOG_EVENT_UNFILTERED"] = "%s不是COMBAT_LOG_EVENT_UNFILTERED的有效子事件"
	L["%s Keep Aspect Ratio"] = "%s 保持宽高比"
	L["%s total auras"] = "共%s个光环"
	L["%s Zoom: %d%%"] = "%s 缩放：%d%%"
	L["%s, Border"] = "%s，边框"
	L["%s, Offset: %0.2f;%0.2f"] = "%s，偏移：%0.2f; %0.2f"
	L["%s, offset: %0.2f;%0.2f"] = "%s，偏移：%0.2f; %0.2f"
	L["|c%02x%02x%02x%02xCustom Color|r"] = "|c%02x%02x%02x%02x自定义颜色|r"
	L["|cFFFF0000Note:|r The unit '%s' is not a trackable unit."] = "|cFFFF0000注意：|r '%s' 不是一个可以追踪的单位。"
	L["|cFFffcc00Anchors:|r Anchored |cFFFF0000%s|r to frame's |cFFFF0000%s|r"] = "|cFFffcc00锚点：|r将|cFFFF0000%s|r对齐至框架的|cFFFF0000%s|r"
	L["|cFFffcc00Anchors:|r Anchored |cFFFF0000%s|r to frame's |cFFFF0000%s|r with offset |cFFFF0000%s/%s|r"] = "|cFFffcc00锚点：|r将|cFFFF0000%s|r对齐至框架的|cFFFF0000%s|r，偏移|cFFFF0000%s/%s|r"
	L["|cFFffcc00Anchors:|r Anchored to frame's |cFFFF0000%s|r"] = "|cFFffcc00锚点：|r对齐至框架的|cFFFF0000%s|r"
	L["|cFFffcc00Anchors:|r Anchored to frame's |cFFFF0000%s|r with offset |cFFFF0000%s/%s|r"] = "|cFFffcc00锚点：|r对齐至框架的|cFFFF0000%s|r，偏移|cFFFF0000%s/%s|r"
	L["|cFFffcc00Extra Options:|r"] = "|cFFffcc00额外选项：|r"
	L["|cFFffcc00Font Flags:|r |cFFFF0000%s|r and shadow |c%sColor|r with offset |cFFFF0000%s/%s|r%s%s"] = "|cFFffcc00字体：|r|cFFFF0000%s|r，阴影|c%s颜色|r，偏移|cFFFF0000%s/%s|r%s%s"
	L["1 Match"] = "1个符合"
	L["A 20x20 pixels icon"] = "20x20像素图标"
	L["A 32x32 pixels icon"] = "32x32像素图标"
	L["A 40x40 pixels icon"] = "40x40像素图标"
	L["A 48x48 pixels icon"] = "48x48像素图标"
	L["A 64x64 pixels icon"] = "64x64像素图标"
	L["A group that dynamically controls the positioning of its children"] = "动态控制子元素位置的群组"
	L["A Unit ID (e.g., party1)."] = "单位ID（如 party1）。"
	L["Actions"] = "动作"
	L["Add %s"] = "添加 %s"
	L["Add a new display"] = "添加一个新的提醒效果"
	L["Add Condition"] = "添加条件"
	L["Add Entry"] = "添加条目"
	L["Add Extra Elements"] = "添加额外元素"
	L["Add Option"] = "添加选项"
	L["Add Overlay"] = "添加覆盖层"
	L["Add Property Change"] = "添加属性修改"
	L["Add Sub Option"] = "添加子选项"
	L["Add to group %s"] = "添加到组％s"
	L["Add to new Dynamic Group"] = "添加到新的动态群组"
	L["Add to new Group"] = "添加到新的群组"
	L["Add Trigger"] = "添加触发器"
	L["Addon"] = "插件"
	L["Addons"] = "插件"
	L["Advanced"] = "高级"
	L["Align"] = "对齐"
	L["Alignment"] = "对齐"
	L["All of"] = "全部"
	L["Allow Full Rotation"] = "允许完全旋转"
	L["Alpha"] = "透明度"
	L["Anchor"] = "锚点"
	L["Anchor Point"] = "锚点指向"
	L["Anchored To"] = "对齐到"
	L["And "] = "和"
	L["and aligned left"] = "并且左对齐"
	L["and aligned right"] = "并且右对齐"
	L["and rotated left"] = "并且向左旋转"
	L["and rotated right"] = "并且向右旋转"
	L["and Trigger %s"] = "和触发器 %s"
	L["Angle"] = "角度"
	L["Animate"] = "动画"
	L["Animated Expand and Collapse"] = "展开折叠动画"
	L["Animates progress changes"] = "进度变化动画"
	L["Animation relative duration description"] = [=[动画的相对持续时间，表示为 分数(1/2)，百分比(50％)，或数字(0.5)。
|cFFFF0000注意：|r 如果没有进度(没有时间事件的触发器,没有持续时间的光环,或其他)，动画将不会播放。
|cFF4444FF举例：|r
如果动画的持续时间设定为 |cFF00CC0010%|r，然后触发的增益时间为20秒，入场动画会播放2秒。
如果动画的持续时间设定为 |cFF00CC0010%|r，然后触发的增益没有持续时间，将不会播放开始动画.]=]
	L["Animation Sequence"] = "动画序列"
	L["Animations"] = "动画"
	L["Any of"] = "任意的"
	L["Apply Template"] = "应用模板"
	L["Arc Length"] = "弧长"
	L["Arcane Orb"] = "奥术宝珠"
	L["At a position a bit left of Left HUD position."] = "在左侧HUD偏左一点的位置。"
	L["At a position a bit left of Right HUD position"] = "在右侧HUD偏左一点的位置。"
	L["At the same position as Blizzard's spell alert"] = "与暴雪的法术警报在同一位置"
	L["Aura Name"] = "光环名称"
	L["Aura Name Pattern"] = "光环名称规则匹配"
	L["Aura Type"] = "光环类型"
	L["Aura(s)"] = "光环"
	L["Author Options"] = "作者选项"
	L["Auto"] = "自动"
	L["Auto-Clone (Show All Matches)"] = "自动克隆（显示所有符合项）"
	L["Auto-cloning enabled"] = "自动克隆已启用"
	L["Automatic"] = "自动"
	L["Automatic Icon"] = "自动显示图标"
	L["Backdrop Color"] = "背景颜色"
	L["Backdrop in Front"] = "背景在前"
	L["Backdrop Style"] = "背景图案类型 "
	L["Background Color"] = "背景色"
	L["Background Offset"] = "背景偏移"
	L["Background Texture"] = "背景材质"
	L["Bar"] = "进度条"
	L["Bar Alpha"] = "进度条透明度"
	L["Bar Color"] = "进度条颜色"
	L["Bar Color Settings"] = "进度条颜色设置"
	L["Bar Inner"] = "进度条内部"
	L["Bar Texture"] = "进度条材质"
	L["Big Icon"] = "大图标"
	--[[Translation missing --]]
	L["Blacklisted Aura Name"] = "Blacklisted Aura Name"
	--[[Translation missing --]]
	L["Blacklisted Exact Spell ID(s)"] = "Blacklisted Exact Spell ID(s)"
	--[[Translation missing --]]
	L["Blacklisted Name(s)"] = "Blacklisted Name(s)"
	--[[Translation missing --]]
	L["Blacklisted Spell ID"] = "Blacklisted Spell ID"
	L["Blend Mode"] = "混合模式"
	L["Blue Rune"] = "蓝色符文"
	L["Blue Sparkle Orb"] = "蓝色闪光球"
	L["Border"] = "边框"
	L["Border %s"] = "边框 %s"
	L["Border Anchor"] = "边框锚点"
	L["Border Color"] = "边框颜色"
	L["Border in Front"] = "边框在前"
	L["Border Inset"] = "插入边框"
	L["Border Offset"] = "边框偏移"
	L["Border Settings"] = "边框设置"
	L["Border Size"] = "边框大小 "
	L["Border Style"] = "边框风格"
	L["Bottom"] = "底部"
	L["Bottom Left"] = "左下"
	L["Bottom Right"] = "右下"
	L["Bracket Matching"] = "括号自动匹配"
	L["Can be a Name or a Unit ID (e.g. party1). A name only works on friendly players in your group."] = "可以是名字或单位 ID（例如 party1），只有在团队中的友方玩家名字是有效的。"
	L["Can be a UID (e.g., party1)."] = "可以是 UID（例如：party1）"
	L["Cancel"] = "取消"
	L["Center"] = "中间"
	L["Channel Number"] = "频道索引"
	L["Chat Message"] = "聊天讯息"
	L["Check On..."] = "检查..."
	L["Children:"] = "子元素："
	L["Choose"] = "选择"
	L["Choose Trigger"] = "选择触发器"
	L["Choose whether the displayed icon is automatic or defined manually"] = "选择显示的图示是自动显示还是手动定义"
	--[[Translation missing --]]
	L["Class"] = "Class"
	L["Clip Overlays"] = "覆盖遮罩"
	L["Clipped by Progress"] = "被进度条遮挡"
	L["Clone option enabled dialog"] = [=[
你已经启用|cFFFF0000自动复制|r。
|cFFFF0000自动复制|r 会让一个图示自动重复来显示多目标的讯息。
直到你把这个图示放在一个|cFF22AA22动态群组|r里，所有被复制的图示都会显示在其它图示的顶端.
你想要让它被放到新的|cFF22AA22动态群组|r的吗？]=]
	L["Close"] = "关闭"
	L["Collapse"] = "折叠"
	L["Collapse all loaded displays"] = "折叠所有载入的图示"
	L["Collapse all non-loaded displays"] = "折叠所有未载入的图示"
	L["Collapsible Group"] = "可折叠的组"
	L["color"] = "颜色"
	L["Color"] = "颜色"
	L["Column Height"] = "行高度"
	L["Column Space"] = "行空间"
	L["Combinations"] = "组合"
	L["Combine Matches Per Unit"] = "组合每个单位满足条件的"
	L["Common Text"] = "一般文本"
	L["Compare against the number of units affected."] = "比较受影响的单位数量"
	L["Compress"] = "压缩"
	L["Condition %i"] = "条件 %i"
	L["Conditions"] = "条件"
	L["Configure what options appear on this panel."] = "配置哪些选项出现在此面板中"
	L["Constant Factor"] = "常数因子"
	L["Control-click to select multiple displays"] = "按住 Control 并点击来选择多种显示"
	L["Controls the positioning and configuration of multiple displays at the same time"] = "同时控制多个图示的位置和设定"
	L["Convert to New Aura Trigger"] = "转换为新的光环触发器"
	L["Convert to..."] = "转换为..."
	L["Cooldown Edge"] = "冷却边缘"
	L["Cooldown Settings"] = "冷却设置"
	L["Cooldown Swipe"] = "冷却旋转动画"
	L["Copy"] = "拷贝"
	L["Copy settings..."] = "拷贝设置"
	L["Copy to all auras"] = "拷贝至所有的光环"
	L["Copy URL"] = "复制 URL"
	L["Count"] = "计数 "
	L["Counts the number of matches over all units."] = "计算所有单位上匹配的数量"
	L["Creating buttons: "] = "创建按钮:"
	L["Creating options: "] = "创建配置:"
	L["Crop X"] = "裁剪X"
	L["Crop Y"] = "裁剪Y"
	L["Custom"] = "自定义"
	L["Custom Anchor"] = "自定义锚点"
	L["Custom Code"] = "自定义代码"
	L["Custom Color"] = "自定义颜色"
	L["Custom Configuration"] = "自定义设置"
	L["Custom Frames"] = "自定义框架"
	L["Custom Function"] = "自定义功能"
	L["Custom Grow"] = "自定义增长"
	L["Custom Options"] = "自定义选项"
	L["Custom Sort"] = "自定义排序"
	L["Custom Trigger"] = "自定义生效触发器"
	L["Custom trigger event tooltip"] = [=[选择用于检查自订触发的事件。
如果有多个事件,可以用逗号或空白分隔。

|cFF4444FF例：|r
UNIT_POWER, UNIT_AURA PLAYER_TARGET_CHANGED]=]
	L["Custom trigger status tooltip"] = [=[选择用于检查自订触发的事件。
因为这一个是状态触发器, 指定的事件 可以被 WeakAuras 调用, 而不需指定参数.
如果有多个事件,可以用逗号或空白分隔。

|cFF4444FF例：|r
UNIT_POWER, UNIT_AURA PLAYER_TARGET_CHANGED]=]
	L["Custom Untrigger"] = "自定义失效触发器"
	L["Custom Variables"] = "自定义变量"
	L["Debuff Type"] = "减益类型"
	L["Default"] = "默认"
	L["Default Color"] = "默认颜色"
	L["Delete"] = "删除"
	L["Delete all"] = "删除所有"
	L["Delete children and group"] = "删除子节点和组"
	L["Delete Entry"] = "删除条目"
	L["Delete Trigger"] = "删除触发器"
	L["Desaturate"] = "褪色"
	L["Description Text"] = "描述文本"
	L["Determines how many entries can be in the table."] = "决定表格中可以有多少条目"
	L["Differences"] = "差异"
	L["Disabled"] = "禁用"
	L["Disallow Entry Reordering"] = "不允许重新排列条目"
	L["Discrete Rotation"] = "离散旋转"
	L["Display"] = "图示"
	L["Display Icon"] = "图示图标"
	L["Display Name"] = "显示的名字"
	L["Display Text"] = "图示文字"
	L["Displays a text, works best in combination with other displays"] = "显示一条文本，最好与其他显示效果结合运用"
	L["Distribute Horizontally"] = "横向分布"
	L["Distribute Vertically"] = "纵向分布"
	L["Do not group this display"] = "不要将此显示内容编组"
	L["Done"] = "完成"
	L["Don't skip this Version"] = "不要跳过这个版本"
	L["Down"] = "下"
	L["Drag to move"] = "拖拽来移动"
	L["Duplicate"] = "复制"
	L["Duplicate All"] = "复制所有"
	L["Duration (s)"] = "持续时间"
	L["Duration Info"] = "持续时间讯息"
	L["Dynamic Duration"] = "动态时长"
	L["Dynamic Group"] = "动态群组"
	L["Dynamic Group Settings"] = "动态群组设置"
	L["Dynamic Information"] = "动态信息"
	L["Dynamic information from first active trigger"] = "排列最前的活跃的触发器的动态信息"
	L["Dynamic information from Trigger %i"] = "触发器%i的动态信息"
	L["Dynamic text tooltip"] = [=[这里有几个特别的编码允许文字动态显示：

|cFFFF0000%p|r - 进度 - 剩余持续时间或非时间值
|cFFFF0000%t|r - 总共 - 总持续时间或最大的非时间值
|cFFFF0000%n|r - 名称 - 图示名称(通常是光环名称)或是没有动态名称图示的编号
|cFFFF0000%i|r - 图标 - 图示关连的显标
|cFFFF0000%s|r - 堆叠 - 光环堆叠数量(通常)
|cFFFF0000%c|r - 自定义 - 允许你自定义一个Lua函数并返回一个用于显示的字符串]=]
	L["Edge"] = "边缘"
	L["Enabled"] = "启用"
	L["End Angle"] = "结束角度"
	L["End of %s"] = "%s 的结尾"
	L["Enter a Spell ID"] = "输入一个法术 ID"
	L["Enter an aura name, partial aura name, or spell id"] = "键入一个法术名，或者法术ID"
	L["Enter an Aura Name, partial Aura Name, or Spell ID. A Spell ID will match any spells with the same name."] = "输入一个光环名称，部分光环名称或法术 ID。如果输入一个法术 ID 则会匹配所有相同名字的法术。"
	L["Enter Author Mode"] = "进入作者模式"
	L["Enter User Mode"] = "进入用户模式"
	L["Enter user mode."] = "进入到使用者的模式。"
	L["Entry %i"] = "条目 %i"
	L["Entry limit"] = "条目限制"
	L["Entry Name Source"] = "条目名称来源"
	L["Event"] = "事件"
	L["Event Type"] = "事件类型"
	L["Event(s)"] = "事件（复数）"
	L["Everything"] = "全部"
	L["Exact Spell ID(s)"] = "精确法术 ID"
	L["Exact Spell Match"] = "严格法术匹配"
	L["Expand"] = "展开"
	L["Expand all loaded displays"] = "展开所有载入的图示"
	L["Expand all non-loaded displays"] = "展开所有未载入的图示"
	L["Expansion is disabled because this group has no children"] = "由于此组没有子物件所以无法进行扩展"
	L["Export to Lua table..."] = "导出为 Lua 表格..."
	L["Export to string..."] = "导出为字符串"
	L["External"] = "外部"
	L["Fade"] = "淡化"
	L["Fade In"] = "渐入"
	L["Fade Out"] = "渐出"
	L["False"] = "假"
	L["Fetch Affected/Unaffected Names"] = "获取受影响的/未受影响的名称"
	--[[Translation missing --]]
	L["Filter by Class"] = "Filter by Class"
	L["Filter by Group Role"] = "根据团队职责过滤"
	L["Finish"] = "结束"
	L["Fire Orb"] = "火焰宝珠"
	L["Font"] = "字体"
	L["Font Size"] = "字体大小"
	L["Foreground"] = "前景"
	L["Foreground Color"] = "前景色"
	L["Foreground Texture"] = "前景材质"
	L["Frame"] = "框架"
	--[[Translation missing --]]
	L["Frame Selector"] = "Frame Selector"
	L["Frame Strata"] = "框架层级"
	L["Frequency"] = "频率"
	L["From Template"] = "从模板"
	--[[Translation missing --]]
	L["From version %s to version %s"] = "From version %s to version %s"
	L["Global Conditions"] = "全局条件"
	L["Glow %s"] = "发光 %s"
	L["Glow Action"] = "发光动作"
	--[[Translation missing --]]
	L["Glow Anchor"] = "Glow Anchor"
	L["Glow Color"] = "发光颜色"
	--[[Translation missing --]]
	L["Glow External Element"] = "Glow External Element"
	--[[Translation missing --]]
	L["Glow Frame Type"] = "Glow Frame Type"
	L["Glow Type"] = "发光类型"
	L["Green Rune"] = "绿色符文"
	L["Grid direction"] = "表格方向"
	L["Group"] = "组"
	L["Group (verb)"] = "群组（动态）"
	L["Group aura count description"] = [=[所输入的队伍或团队成员的数量必须给定一个或多个光环作为显示触发的条件。
如果输入的数字是一个整数(如5)，受影响的团队成员数量将与输入的数字相同。
如果输入的数字是一个小数(如0.5)，分数(例如1/ 2)，或百分比(例如50%%)，那么多比例的队伍或团队成员的必须受到影响。
|cFF4444FF举例：|r
|cFF00CC00大于 0|r  会在任意一人受影响时触发
|cFF00CC00等于 100%%|r 会在所有人受影响时触发
|cFF00CC00不等于 2|r 会在2人受影响之外时触发
|cFF00CC00小于等于 0.8|r 会在小于80%%的人受影响时触发
|cFF00CC00大于 1/2|r 会在超过一半以上的人受影响时触发
|cFF00CC00大于等于 0|r 总是触发.]=]
	L["Group by Frame"] = "根据框架分组"
	L["Group contains updates from Wago"] = "包含 Wago 更新的群组"
	L["Group Icon"] = "组图标"
	L["Group key"] = "组键值"
	L["Group Member Count"] = "队伍或团队成员数"
	L["Group Role"] = "团队职责"
	L["Group Scale"] = "组缩放"
	L["Group Settings"] = "群组设置"
	L["Group Type"] = "组类别"
	L["Grow"] = "生长"
	L["Hawk"] = "鹰"
	L["Height"] = "高度"
	L["Help"] = "帮助"
	L["Hide"] = "隐藏"
	L["Hide Cooldown Text"] = "隐藏冷却文本"
	L["Hide Extra Options"] = "隐藏额外选项"
	--[[Translation missing --]]
	L["Hide Glows applied by this aura"] = "Hide Glows applied by this aura"
	L["Hide on"] = "隐藏于"
	L["Hide this group's children"] = "隐藏此组的子节点"
	L["Hide When Not In Group"] = "不在队伍时隐藏"
	L["Horizontal Align"] = "水平对齐"
	L["Horizontal Bar"] = "水平条"
	L["Huge Icon"] = "巨型图标"
	L["Hybrid Position"] = "混合定位"
	L["Hybrid Sort Mode"] = "混合排序模式"
	L["Icon"] = "图标"
	L["Icon Info"] = "图标信息"
	L["Icon Inset"] = "项目插入"
	L["Icon Position"] = "图标位置"
	L["Icon Settings"] = "图标设置"
	L["If"] = "如果"
	L["If checked, then the user will see a multi line edit box. This is useful for inputting large amounts of text."] = "勾选后用户可以看见一个多行的输入框，在输入大量文本时很有用。"
	L["If checked, then this option group can be temporarily collapsed by the user."] = "勾选后选项组可以临时被用户折叠"
	L["If checked, then this option group will start collapsed."] = "勾选后选项组将会在打开时折叠"
	L["If checked, then this separator will include text. Otherwise, it will be just a horizontal line."] = "如果选中，则此分隔符将会包含文本，否则就只是一条横线。"
	--[[Translation missing --]]
	L["If checked, then this separator will not merge with other separators when selecting multiple auras."] = "If checked, then this separator will not merge with other separators when selecting multiple auras."
	L["If checked, then this space will span across multiple lines."] = "如果勾选，此空白区域将横跨多行。"
	L["If Trigger %s"] = "如果触发器 %s"
	L["If unchecked, then a default color will be used (usually yellow)"] = "如果不勾选，则使用默认颜色（通常是黄色）"
	L["If unchecked, then this space will fill the entire line it is on in User Mode."] = "如果不勾选，则在用户模式下此空白区域将填充一整行。"
	L["Ignore all Updates"] = "忽略所有更新"
	L["Ignore Self"] = "忽略自身"
	L["Ignore self"] = "忽略自己的"
	L["Ignored"] = "被忽略"
	L["Import"] = "导入"
	L["Import a display from an encoded string"] = "从字串导入一个图示"
	L["Inner"] = "内部"
	L["Invalid Item Name/ID/Link"] = "无效的物品名称/ID/链接"
	L["Invalid Spell ID"] = "无效的法术 ID"
	L["Invalid Spell Name/ID/Link"] = "无效的法术名称/ID/链接"
	L["Inverse"] = "反转"
	L["Inverse Slant"] = "边缘反色"
	L["Is Stealable"] = "可偷取"
	L["Justify"] = "对齐"
	L["Keep Aspect Ratio"] = "保持比例不变"
	L["Large Input"] = "大输入框"
	L["Leaf"] = "叶子"
	L["Left"] = "左方"
	L["Left 2 HUD position"] = "左侧第二 HUD 位置"
	L["Left HUD position"] = "左侧 HUD 位置"
	L["Legacy Aura Trigger"] = "传统光环触发器"
	L["Length"] = "长度"
	L["Limit"] = "限制"
	L["Lines & Particles"] = "线条和粒子"
	L["Load"] = "载入"
	L["Loaded"] = "已载入"
	L["Loop"] = "循环"
	L["Low Mana"] = "低法力值"
	L["Magnetically Align"] = "磁力对齐"
	L["Main"] = "主要的"
	L["Manage displays defined by Addons"] = "由插件管理已定义的图示"
	L["Match Count"] = "计数匹配"
	L["Max"] = "最大"
	L["Max Length"] = "最大长度"
	L["Medium Icon"] = "中等图标"
	L["Message"] = "讯息"
	L["Message Prefix"] = "讯息前缀"
	L["Message Suffix"] = "讯息后缀"
	L["Message Type"] = "讯息类型"
	L["Min"] = "最小"
	L["Mirror"] = "镜像"
	L["Model"] = "模型"
	L["Model %s"] = "模型 %s"
	L["Model Settings"] = "模型设置"
	L["Move Above Group"] = "移动上方的组"
	L["Move Below Group"] = "移动下方的组"
	L["Move Down"] = "向下移"
	--[[Translation missing --]]
	L["Move Entry Down"] = "Move Entry Down"
	L["Move Entry Up"] = "将条目上移"
	L["Move Into Above Group"] = "移动到上方的组"
	L["Move Into Below Group"] = "移动到下方的组"
	L["Move this display down in its group's order"] = "在组内将此显示内容下移"
	L["Move this display up in its group's order"] = "在组内将此显示内容上移"
	L["Move Up"] = "向上移"
	L["Multiple Displays"] = "多个图示"
	L["Multiple Triggers"] = "多触发器"
	L["Multiselect ignored tooltip"] = [=[|cFFFF0000忽略|r - |cFF777777单个|r - |cFF777777多个|r
当图示应该载入时这项设定不应该使用]=]
	L["Multiselect multiple tooltip"] = [=[|cFFFF0000忽略|r - |cFF777777单个|r - |cFF777777多个|r
任何相匹配的值的值可以提取]=]
	L["Multiselect single tooltip"] = [=[|cFFFF0000忽略|r - |cFF777777单个|r - |cFF777777多个|r
只有一个单一的匹配值可以提取]=]
	L["Name Info"] = "名称讯息"
	L["Name Pattern Match"] = "名称规则匹配"
	--[[Translation missing --]]
	L["Name Plate"] = "Name Plate"
	L["Name(s)"] = "名称"
	L["Nameplates"] = "姓名板"
	L["Negator"] = "不"
	L["Never"] = "从不"
	L["New Aura"] = "新建"
	L["New Value"] = "新值"
	L["No"] = "不"
	L["No Children"] = "没有子物件"
	L["No tooltip text"] = "没有提示文字"
	L["None"] = "无"
	L["Not all children have the same value for this option"] = "并非所有子元素都拥有相同的此选项的值"
	L["Not Loaded"] = "未载入"
	L["Note: Automated Messages to SAY and YELL are blocked outside of Instances."] = "注意：自动发送“大喊”和“说话”功能在副本外会被屏蔽。"
	L["Number of Entries"] = "条目数"
	L["Offer a guided way to create auras for your character"] = "提供为角色创建光环的指导"
	L["Okay"] = "好"
	L["On Hide"] = "图示隐藏时触发"
	L["On Init"] = "于初始时"
	L["On Show"] = "图示显示时触发"
	L["Only match auras cast by people other than the player"] = "只匹配其它玩家施放的光环"
	L["Only match auras cast by people other than the player or his pet"] = "只匹配由不是玩家和玩家宠物施放的光环"
	L["Only match auras cast by the player"] = "只匹配玩家自己施放的光环"
	L["Only match auras cast by the player or his pet"] = "只匹配由玩家和玩家宠物施放的光环"
	L["Operator"] = "运算符"
	L["Option %i"] = "选项 %i"
	L["Option key"] = "选项键值"
	L["Option Type"] = "选项类型"
	L["Options will open after combat ends."] = "选项面板将在战斗结束后打开"
	L["or"] = "或"
	L["or Trigger %s"] = "或触发器 %s"
	L["Orange Rune"] = "橙色符文"
	L["Orientation"] = "方向"
	L["Outer"] = "外部"
	L["Outline"] = "轮廓"
	L["Overflow"] = "溢出"
	L["Overlay %s Info"] = "覆盖层 %s 信息"
	L["Overlays"] = "覆盖层"
	L["Own Only"] = "只来源于自己"
	L["Paste Action Settings"] = "粘贴动作设置"
	L["Paste Animations Settings"] = "粘贴动画设置"
	L["Paste Author Options Settings"] = "粘贴作者选项设置"
	L["Paste Condition Settings"] = "粘贴条件设置"
	L["Paste Custom Configuration"] = "粘贴自定义设置"
	L["Paste Display Settings"] = "粘贴显示设置"
	L["Paste Group Settings"] = "粘贴团队设置"
	L["Paste Load Settings"] = "粘贴加载设置"
	L["Paste Settings"] = "粘贴设置"
	L["Paste text below"] = "在下方粘贴文本"
	L["Paste Trigger Settings"] = "粘贴触发器设置"
	L["Play Sound"] = "播放声音"
	L["Portrait Zoom"] = "纵向缩放"
	L["Position Settings"] = "位置设置"
	L["Preferred Match"] = "匹配偏好"
	L["Preset"] = "预设"
	L["Press Ctrl+C to copy"] = "按 Ctrl+C 复制"
	--[[Translation missing --]]
	L["Prevent Merging"] = "Prevent Merging"
	L["Processed %i chars"] = "已处理%i个字符"
	L["Progress Bar"] = "进度条"
	L["Progress Bar Settings"] = "进度条设置"
	L["Progress Texture"] = "进度条材质"
	L["Progress Texture Settings"] = "进度条材质设置"
	L["Purple Rune"] = "紫色符文"
	L["Put this display in a group"] = "将此显示内容放到组中"
	L["Radius"] = "范围"
	L["Re-center X"] = "到中心 X 偏移"
	L["Re-center Y"] = "到中心 Y 偏移"
	L["Regions of type \"%s\" are not supported."] = "%s 区域类型不被支持。"
	L["Remaining Time"] = "剩余时间"
	L["Remaining Time Precision"] = "剩余时间精度"
	L["Remove"] = "移除"
	L["Remove this display from its group"] = "从所在组中移除此显示内容"
	L["Remove this property"] = "移除此属性"
	L["Rename"] = "重命名"
	L["Repeat After"] = "每当此条件发生后重复"
	L["Repeat every"] = "每当此条件满足时重复"
	--[[Translation missing --]]
	L["Require unit from trigger"] = "Require unit from trigger"
	L["Required for Activation"] = "激活需要的条件"
	L["Reset all options to their default values."] = "重置所有选项为默认值"
	L["Reset Entry"] = "重置条目"
	L["Reset to Defaults"] = "重置为默认"
	L["Right"] = "右方"
	L["Right 2 HUD position"] = "右侧第二 HUD 位置"
	L["Right HUD position"] = "右侧 HUD 位置"
	L["Right-click for more options"] = "右键点击获得更多选项"
	L["Rotate"] = "旋转"
	L["Rotate In"] = "旋转进入"
	L["Rotate Out"] = "旋转退出"
	L["Rotate Text"] = "旋转文字"
	L["Rotation"] = "旋转"
	L["Rotation Mode"] = "旋转模式"
	L["Row Space"] = "列空间"
	L["Row Width"] = "列宽度"
	L["Same"] = "相同"
	L["Scale"] = "缩放"
	L["Search"] = "搜索"
	L["Select the auras you always want to be listed first"] = "选择优先列出的光环"
	L["Send To"] = "发送给"
	L["Separator Text"] = "分隔符文本"
	L["Separator text"] = "分隔符文本"
	L["Set Parent to Anchor"] = "将父框架置于锚点"
	L["Set Thumbnail Icon"] = "设置缩略图标"
	L["Set tooltip description"] = "设置鼠标提示内容"
	L["Sets the anchored frame as the aura's parent, causing the aura to inherit attributes such as visiblility and scale."] = "将锚点框架设置为光环的父框架，使得光环继承锚点框架的一些属性（例如：可见性和缩放）"
	L["Settings"] = "设置"
	L["Shadow Color"] = "阴影颜色"
	L["Shadow X Offset"] = "阴影 X 轴偏移"
	L["Shadow Y Offset"] = "阴影 Y 轴偏移"
	L["Shift-click to create chat link"] = "按住 Shift 点击来生成聊天链接"
	L["Show all matches (Auto-clone)"] = "列出所有符合的(自动复制)"
	L["Show Border"] = "显示边框"
	L["Show Cooldown"] = "显示冷却"
	L["Show Extra Options"] = "显示额外选项"
	L["Show Glow"] = "显示发光效果"
	L["Show Icon"] = "显示图标"
	L["Show If Unit Does Not Exist"] = "如果单位不存在时显示"
	L["Show If Unit Is Invalid"] = "当单位无效时显示"
	L["Show Matches for"] = "为下列项显示匹配项"
	L["Show Matches for Units"] = "为单位显示匹配项"
	L["Show Model"] = "显示模型"
	L["Show model of unit "] = "显示该单位的模型"
	L["Show On"] = "当此条件满足时显示"
	L["Show Spark"] = "显示闪光效果"
	L["Show Text"] = "显示文本"
	L["Show this group's children"] = "显示此组的子物件"
	L["Shows a 3D model from the game files"] = "显示游戏文件中的3D模形"
	L["Shows a border"] = "显示一个边框"
	L["Shows a custom texture"] = "显示自定义材质"
	L["Shows a glow"] = "显示发光效果"
	L["Shows a model"] = "以模型显示"
	L["Shows a progress bar with name, timer, and icon"] = "显示一个有名称，时间，图标的进度条"
	L["Shows a spell icon with an optional cooldown overlay"] = "显示可选的法术图示有冷却时间重叠"
	L["Shows a texture that changes based on duration"] = "显示一个随持续时间而变的材质"
	L["Shows one or more lines of text, which can include dynamic information such as progress or stacks"] = "显示一行或多行文字, 它们包换动态信息, 如进度和叠加层数"
	L["Simple"] = "简单"
	L["Size"] = "大小"
	L["Skip this Version"] = "跳过这个版本"
	L["Slant Amount"] = "斜线数量"
	L["Slant Mode"] = "倾斜模式"
	L["Slanted"] = "倾斜的"
	L["Slide"] = "滑动"
	L["Slide In"] = "滑动"
	L["Slide Out"] = "滑出"
	L["Slider Step Size"] = "滑动条步进尺寸"
	L["Small Icon"] = "小图标"
	L["Smooth Progress"] = "过程平滑"
	L["Soft Max"] = "软上限"
	L["Soft Min"] = "软下限"
	L["Sort"] = "排序"
	L["Sound"] = "声音"
	L["Sound Channel"] = "声道"
	L["Sound File Path"] = "声音文件路径"
	L["Sound Kit ID"] = "音效包ID"
	L["Space"] = "间隙"
	L["Space Horizontally"] = "横向间隙"
	L["Space Vertically"] = "纵向间隙"
	L["Spark"] = "高光"
	L["Spark Settings"] = "高光设置"
	L["Spark Texture"] = "高光材质"
	L["Specific Unit"] = "指定单位"
	L["Spell ID"] = "法术ID"
	L["Stack Count"] = "层数"
	L["Stack Info"] = "层数信息"
	L["Stagger"] = "交错"
	L["Star"] = "星星"
	L["Start"] = "开始"
	L["Start Angle"] = "起始角度"
	L["Start Collapsed"] = "打开时折叠"
	L["Start of %s"] = "%s 的开始"
	L["Status"] = "状态"
	L["Stealable"] = "可偷取"
	L["Step Size"] = "步进尺寸"
	L["Stop ignoring Updates"] = "不再忽略更新"
	L["Stop Sound"] = "停止播放声音"
	L["Sub Elements"] = "子元素"
	L["Sub Option %i"] = "子选项 %i"
	L["Temporary Group"] = "模板群组"
	L["Text"] = "文字"
	L["Text %s"] = "文本 %s"
	L["Text Color"] = "文字颜色"
	L["Text Settings"] = "文本设置"
	L["Texture"] = "材质"
	L["Texture Info"] = "材质信息"
	L["Texture Settings"] = "材质设置"
	L["Texture Wrap"] = "材质折叠"
	L["The duration of the animation in seconds."] = "动画持续秒数"
	L["The duration of the animation in seconds. The finish animation does not start playing until after the display would normally be hidden."] = "动画时长秒时。直到显示内容被正常隐藏之后结束动画才会播放。"
	L["The type of trigger"] = "触发器类型"
	L["Then "] = "然后"
	L["Thickness"] = "粗细"
	L["This adds %tooltip, %tooltip1, %tooltip2, %tooltip3 as text replacements."] = "这将替换 %tooltip, %tooltip1, %tooltip2, %tooltip3 的文本。"
	L["This aura has legacy aura trigger(s). Convert them to the new system to benefit from enhanced performance and features"] = "这个光环使用了传统光环触发器，将它们转换到新版来获得更好的体验和更多的功能。"
	L["This display is currently loaded"] = "此显示内容已加载"
	L["This display is not currently loaded"] = "此显示内容未加载"
	L["This region of type \"%s\" is not supported."] = "该类型区域“%s”不受支持。"
	L["This setting controls what widget is generated in user mode."] = "这些设置用来控制在用户模式下生成的控件。"
	L["Time in"] = "时间"
	L["Tiny Icon"] = "微型图标"
	L["To Frame's"] = "到框架的"
	--[[Translation missing --]]
	L["To Group's"] = "To Group's"
	L["To Personal Ressource Display's"] = "到个人资源显示的"
	L["To Screen's"] = "到屏幕的"
	L["Toggle the visibility of all loaded displays"] = "切换当前已载入图示的可见状态"
	L["Toggle the visibility of all non-loaded displays"] = "切换当前未载入图示的可见状态"
	L["Toggle the visibility of this display"] = "切换此显示内容的可见性"
	L["Tooltip"] = "提示"
	L["Tooltip Content"] = "鼠标提示内容"
	L["Tooltip on Mouseover"] = "鼠标提示"
	L["Tooltip Pattern Match"] = "鼠标提示规则匹配"
	L["Tooltip Text"] = "鼠标提示文本"
	L["Tooltip Value"] = "鼠标提示值"
	L["Tooltip Value #"] = "鼠标提示值 #"
	L["Top"] = "上方"
	L["Top HUD position"] = "顶部 HUD 位置"
	L["Top Left"] = "左上"
	L["Top Right"] = "右上"
	L["Total Time"] = "总时间"
	L["Total Time Precision"] = "总时间精度"
	L["Trigger"] = "触发"
	L["Trigger %d"] = "触发器 %d"
	L["Trigger %s"] = "触发器 %s"
	L["True"] = "真"
	L["Type"] = "类型"
	L["Ungroup"] = "不分组"
	L["Unit"] = "单位"
	L["Unit %s is not a valid unit for RegisterUnitEvent"] = "单位 %s 并不是 RegisterUnitEvent 的有效单位"
	L["Unit Count"] = "单位计数"
	--[[Translation missing --]]
	L["Unit Frame"] = "Unit Frame"
	L["Unit Frames"] = "单位框架"
	L["Unlike the start or finish animations, the main animation will loop over and over until the display is hidden."] = "不同于开始或结束动画，主动画将不停循环，直到图示被隐藏。"
	L["Up"] = "上"
	--[[Translation missing --]]
	L["Update %s by %s"] = "Update %s by %s"
	L["Update Custom Text On..."] = "更新自定义文字于"
	L["Update in Group"] = "更新群组内所有项"
	L["Update this Aura"] = "更新此光环"
	L["Use Custom Color"] = "使用自定义颜色"
	L["Use Display Info Id"] = "使用显示信息 ID"
	L["Use Full Scan (High CPU)"] = "使用完整扫描(高CPU)"
	L["Use nth value from tooltip:"] = "使用来自鼠标提示的值的顺序："
	L["Use SetTransform"] = "使用 SetTransform 方法"
	L["Use tooltip \"size\" instead of stacks"] = "使用\\\"大小\\\"提示,而不是\\\"层数\\\""
	L["Use Tooltip Information"] = "使用鼠标提示信息"
	L["Used in Auras:"] = "在下列光环中被使用："
	L["Used in auras:"] = "在下列光环中被使用："
	L["Value %i"] = "值 %i"
	L["Values are in normalized rgba format."] = "数值为标准化的 RGBA 格式"
	L["Values:"] = "值："
	L["Version: "] = "版本："
	L["Vertical Align"] = "垂直对齐"
	L["Vertical Bar"] = "垂直条"
	L["View"] = "视图"
	L["Wago Update"] = "Wago.io 更新"
	L["Whole Area"] = "整个区域"
	L["Width"] = "宽度"
	L["X Offset"] = "X 偏移"
	L["X Rotation"] = "X旋转"
	L["X Scale"] = "宽度比例"
	L["X-Offset"] = "X 偏移"
	L["Y Offset"] = "Y 偏移"
	L["Y Rotation"] = "Y旋转"
	L["Y Scale"] = "长度比例"
	L["Yellow Rune"] = "黄色符文"
	L["Yes"] = "是"
	L["Y-Offset"] = "Y 偏移"
	L["You are about to delete %d aura(s). |cFFFF0000This cannot be undone!|r Would you like to continue?"] = "正在删除 %d 个光环，|cFFFF0000此操作无法被撤销！|r真的要删除吗?"
	L["Z Offset"] = "深度 偏移"
	L["Z Rotation"] = "Z旋转"
	L["Zoom"] = "缩放"
	L["Zoom In"] = "放大"
	L["Zoom Out"] = "缩小"

