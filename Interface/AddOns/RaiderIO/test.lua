local possibleTitle = {
    "15+",
    "+15",
    "15+ skilled",
    "+15 skilled",
    "skilled 15+",
    "skilled +15",
    "Yolo 3k 15+",
    "Yolo 3k +15",
    "Yolo +15 3k",
    "Yolo 15+ 3k",
    "Yolo 3 15+",
    "Yolo 3 +15",
    "2200 +15 NL",
    "2200+ 15 NL",
}

-- local regexesFindLevel = { "(%d+)%+", "%+%s*(%d+)", "(%d+)%s*%+", "(%d+)" }

local regexesFindLevel = {
--    "(%d+)%+", "%+(%d+)", "%+%s+(%d+)", "(%d+)%s+%+", "(%d+)"
    "(%d+)%+", "%+%s*(%d+)", "(%d+)%s*%+", "(%d+)"
}

for _, title in ipairs(possibleTitle) do
    local level = 0
    for _, regex in ipairs(regexesFindLevel) do
        level = title:match(regex);
        level = tonumber(level)

        if level then
            break
        end
    end
    if level and level ~= 15 then
        print(level)
        print(title)
        return
    else
        -- print("this is what we got")
        -- print(level)
        -- print(title)
    end
end


-- "(%d+)%+", "%+(%d+)", "%+%s+(%d+)", "(%d+)%s+%+", "(%d+)"