local uilibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kiet1308/tvkhub/main/rac"))()
local windowz = uilibrary:CreateWindow("ARBIX HUB", "RANIBOW PIECE", true)
local Logo = ""

local Page1 = windowz:CreatePage("MAIN")
local itemN

local Section1 = Page1:CreateSection("Item giver")
Section1:CreateTextbox("item name", false, function (vv)
   itemN = vv
end)
Section1:CreateButton("get item", function ()
   local args = {
    [1] = "Change",
    [2] = itemN,
    [3] = "Inv"
}

game:GetService("ReplicatedStorage").Inventory:FireServer(unpack(args))

end)
