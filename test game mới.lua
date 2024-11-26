local DeltaLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/NguyenNhatSakura/Delta/refs/heads/main/src/main.lua"))()

local DeltaGui = DeltaLib:Start({
    ["Name"] = "Test hack tự làm",
    ["Description"] = "By Minh Duc",
    ["Info Color"] = Color3.fromRGB(5, 59, 255),
    ["Logo Info"] = "rbxassetid://15292705867",
    ["Avatar Dev"] = "rbxassetid://15292705867",
    ["Name Info"] = "Minh Duc Info",
    ["Name Dev"] = "Minh Duc",
    ["Info Description"] = "zalo.me/0765520260",
    ["Tab Width"] = 135,
    ["Color"] = Color3.fromRGB(0, 255, 255),
    ["CloseCallBack"] = function() end
})

local Notify = DeltaLib:Notify({
	["Title"] = "Hack by NguyenMinhDuc",
	["Description"] = "Chào khách hàng",
	["Color"] = Color3.fromRGB(0, 0, 255),
	["Content"] = "Make by NguyenMinhDuc",
	["Time"] = 1,
	["Delay"] = 10
})

local MainTab = DeltaGui:MakeTab("Misc")  -- Đổi tên từ "Test chức năng" thành "Misc"

-- Các biến theo dõi trạng thái cho chức năng Fly, Xuyên Tường, và Auto Click
local flyEnabled = false
local noclipEnabled = false
local autoClickEnabled = false
local flyThread
local noclipThread
local autoClickThread

-- Hàm Auto Click sử dụng VirtualInputManager để click tự động vào màn hình
local function AutoClick()
    local VirtualInputManager = game:GetService("VirtualInputManager")

    -- Vòng lặp auto click
    while autoClickEnabled do
        VirtualInputManager:SendMouseButtonEvent(0, 0, 0, true, game, 0) -- Nhấn chuột trái
        VirtualInputManager:SendMouseButtonEvent(0, 0, 0, false, game, 0) -- Thả chuột trái
        wait(0.01)  -- Điều chỉnh tốc độ click (0.01 giây)
    end
end

-- Hàm để bật/tắt Xuyên Tường (Noclip)
local function Noclip()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    
    -- Cho phép xuyên tường bằng cách tắt các collisions
    while noclipEnabled do
        for _, part in pairs(character:GetDescendants()) do
            if part:IsA("BasePart") then
                part.CanCollide = false
            end
        end
        wait(0.1)  -- Tốc độ kiểm tra xuyên tường
    end
end

-- Tạo mục "Misc" với các chức năng Fly, Xuyên Tường, và Auto Click
local Section = MainTab:Section({
    ["Title"] = "Misc",
    ["Content"] = "Chức năng bay, xuyên tường và auto click"
})

-- Nút bật/tắt Auto Click
Section:Toggle({
    ["Title"] = "Bật/Tắt Auto Click",
    ["Default"] = false,
    ["Callback"] = function(state)
        autoClickEnabled = state  -- Bật/tắt Auto Click
        if autoClickEnabled then
            print("Auto Click ON")
            autoClickThread = coroutine.create(AutoClick)
            coroutine.resume(autoClickThread)
        else
            print("Auto Click OFF")
            autoClickEnabled = false
        end
    end
})

-- Nút bật/tắt Xuyên Tường
Section:Toggle({
    ["Title"] = "Bật/Tắt Xuyên Tường",
    ["Default"] = false,
    ["Callback"] = function(state)
        noclipEnabled = state  -- Bật/tắt Xuyên Tường
        if noclipEnabled then
            print("Xuyên Tường ON")
            noclipThread = coroutine.create(Noclip)
            coroutine.resume(noclipThread)
        else
            print("Xuyên Tường OFF")
            noclipEnabled = false
        end
    end
})