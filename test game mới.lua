local DeltaLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/NguyenNhatSakura/Delta/refs/heads/main/src/main.lua"))()

local DeltaGui = DeltaLib:Start({
    ["Name"] = "Test hack tự làm",
    ["Description"] = "By Minh Duc",
    ["Info Color"] = Color3.fromRGB(5, 59, 113),
    ["Logo Info"] = "rbxassetid://15292705867",
    ["Avatar Dev"] = "rbxassetid://15292705867",
    ["Name Info"] = "Minh Duc Info",
    ["Name Dev"] = "Minh Duc",
    ["Info Description"] = "zalo.me/0765520260",
    ["Tab Width"] = 135,
    ["Color"] = Color3.fromRGB(127, 146, 242),
    ["CloseCallBack"] = function() end
})

local Notify = DeltaLib:Notify({
	["Title"] = "Hack by NguyenMinhDuc",
	["Description"] = "Chào khách hàng",
	["Color"] = Color3.fromRGB(127, 146, 242),
	["Content"] = "Make by NguyenMinhDuc",
	["Time"] = 1,
	["Delay"] = 10
})

local MainTab = DeltaGui:MakeTab("Misc")  -- Đổi tên từ "Test chức năng" thành "Misc"

-- Biến trạng thái toàn cục
_G.pushUpEnabled = false
_G.invincibleEnabled = false
_G.autoClickEnabled = false
_G.noclipEnabled = false
_G.sizeBugEnabled = false  -- Trạng thái phóng to nhân vật

-- Hàm tăng kích thước nhân vật (phóng to)
local function BugSize()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()

    -- Thay đổi kích thước của các bộ phận cơ thể
    while true do
        if _G.sizeBugEnabled then
            for _, part in pairs(character:GetDescendants()) do
                if part:IsA("BasePart") then
                    part.Size = part.Size * 2  -- Phóng to mỗi phần cơ thể
                end
            end
        end
        wait(0.5)  -- Điều chỉnh tốc độ bug kích thước
    end
end

-- Hàm bật bất tử
local function BecomeInvincible()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()

    -- Ngừng nhận sát thương
    while true do
        if _G.invincibleEnabled then
            local humanoid = character:FindFirstChildWhichIsA("Humanoid")
            if humanoid then
                humanoid.Health = humanoid.MaxHealth  -- Khôi phục máu về tối đa
                humanoid.HealthChanged:Connect(function() 
                    humanoid.Health = humanoid.MaxHealth  -- Nếu có thay đổi máu, luôn khôi phục về tối đa
                end)
            end
        end
        wait(0.1)  -- Kiểm tra liên tục để tránh sát thương
    end
end

-- Hàm tăng tốc độ đẩy tạ nhanh
local function FastPushUp()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    
    -- Lặp liên tục để đẩy tạ nhanh không cần đợi
    while true do
        if _G.pushUpEnabled then
            -- Giả lập hành động đẩy tạ nhanh bằng cách gọi hành động trong game
            local event = game:GetService("ReplicatedStorage"):FindFirstChild("PushUpEvent")
            if event then
                event:FireServer()  -- Kích hoạt hành động đẩy tạ
            end
        end
        wait(0.01)  -- Điều chỉnh tốc độ để đẩy nhanh
    end
end

-- Hàm Auto Click sử dụng VirtualInputManager để click tự động vào màn hình
local function AutoClick()
    local VirtualInputManager = game:GetService("VirtualInputManager")

    -- Vòng lặp auto click
    while true do
        if _G.autoClickEnabled then
            VirtualInputManager:SendMouseButtonEvent(0, 0, 0, true, game, 0) -- Nhấn chuột trái
            VirtualInputManager:SendMouseButtonEvent(0, 0, 0, false, game, 0) -- Thả chuột trái
        end
        wait(0.01)  -- Điều chỉnh tốc độ click (0.01 giây)
    end
end

-- Hàm để bật/tắt Xuyên Tường (Noclip)
local function Noclip()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    
    -- Cho phép xuyên tường bằng cách tắt các collisions
    while true do
        if _G.noclipEnabled then
            for _, part in pairs(character:GetDescendants()) do
                if part:IsA("BasePart") then
                    part.CanCollide = false
                end
            end
        end
        wait(0.1)  -- Tốc độ kiểm tra xuyên tường
    end
end

-- Tạo mục "Misc" với các chức năng Fast PushUp, Invincible, Auto Click, Noclip và BugSize
local Section = MainTab:Section({
    ["Title"] = "Misc",
    ["Content"] = "Chức năng tăng tốc đẩy tạ, bất tử, auto click, xuyên tường và phóng to nhân vật"
})

-- Nút bật/tắt Tăng tốc độ đẩy tạ
Section:Toggle({
    ["Title"] = "Tăng tốc đẩy tạ",
    ["Default"] = false,
    ["Callback"] = function(state)
        _G.pushUpEnabled = state  -- Bật/tắt chức năng đẩy tạ nhanh
        if state then
            print("Push Up ON")
        else
            print("Push Up OFF")
        end
    end
})

-- Nút bật/tắt Bất Tử
Section:Toggle({
    ["Title"] = "Bật/Tắt Bất Tử",
    ["Default"] = false,
    ["Callback"] = function(state)
        _G.invincibleEnabled = state  -- Bật/tắt Bất Tử
        if state then
            print("Invincible ON")
        else
            print("Invincible OFF")
        end
    end
})

-- Nút bật/tắt Auto Click
Section:Toggle({
    ["Title"] = "Bật/Tắt Auto Click",
    ["Default"] = false,
    ["Callback"] = function(state)
        _G.autoClickEnabled = state  -- Bật/tắt Auto Click
        if state then
            print("Auto Click ON")
        else
            print("Auto Click OFF")
        end
    end
})

-- Nút bật/tắt Xuyên Tường
Section:Toggle({
    ["Title"] = "Bật/Tắt Xuyên Tường",
    ["Default"] = false,
    ["Callback"] = function(state)
        _G.noclipEnabled = state  -- Bật/tắt Xuyên Tường
        if state then
            print("Xuyên Tường ON")
        else
            print("Xuyên Tường OFF")
        end
    end
})

-- Nút bật/tắt Bug Phóng To Nhân Vật
Section:Toggle({
    ["Title"] = "Bug Phóng To Nhân Vật",
    ["Default"] = false,
    ["Callback"] = function(state)
        _G.sizeBugEnabled = state  -- Bật/tắt chức năng phóng to nhân vật
        if state then
            print("Size Bug ON")
        else
            print("Size Bug OFF")
        end
    end
})

-- Chạy các luồng chức năng chính
coroutine.wrap(FastPushUp)()
coroutine.wrap(BecomeInvincible)()
coroutine.wrap(AutoClick)()
coroutine.wrap(Noclip)()
coroutine.wrap(BugSize)()