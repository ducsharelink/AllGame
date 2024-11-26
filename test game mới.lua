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
    ["Color"] = Color3.fromRGB(0, 255, 255),
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

local MainTab = DeltaGui:MakeTab("Misc")

-- Biến trạng thái toàn cục
_G.autoClickEnabled = false
_G.flyEnabled = false
_G.noclipEnabled = false
_G.espEnabled = false

-- Hàm Auto Click
local function AutoClick()
    while _G.autoClickEnabled do
        game:GetService("Players").LocalPlayer:RequestStreamAroundAsync(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)  -- Lệnh giả lập click
        wait(0.01)  -- Tốc độ click nhanh
    end
end

-- Hàm Di chuyển Đứng Im Trên Không (Fly)
local function Fly()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

    while true do
        if _G.flyEnabled then
            humanoidRootPart.CFrame = humanoidRootPart.CFrame + Vector3.new(0, 1, 0)  -- Giữ cho nhân vật đứng trên không
        end
        wait(0.1)  -- Kiểm tra mỗi 0.1 giây
    end
end

-- Hàm Xuyên Tường (NoClip)
local function NoClip()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()

    -- Mở chế độ không va chạm (no-clip)
    while true do
        if _G.noclipEnabled then
            for _, part in pairs(character:GetChildren()) do
                if part:IsA("BasePart") then
                    part.CanCollide = false  -- Tắt va chạm với vật thể
                end
            end
        else
            for _, part in pairs(character:GetChildren()) do
                if part:IsA("BasePart") then
                    part.CanCollide = true  -- Bật va chạm lại khi tắt NoClip
                end
            end
        end
        wait(0.1)  -- Kiểm tra mỗi 0.1 giây
    end
end

-- Hàm ESP (Hiển thị vị trí của tất cả người chơi)
local function ESP()
    local players = game:GetService("Players")

    -- Dùng GUI để hiển thị tên người chơi và vị trí của họ
    local function DrawESP(player)
        if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            local rootPart = player.Character.HumanoidRootPart
            local screenPos, onScreen = game:GetService("Workspace").CurrentCamera:WorldToScreenPoint(rootPart.Position)
            
            if onScreen then
                local label = Instance.new("TextLabel")
                label.Size = UDim2.new(0, 200, 0, 50)
                label.Position = UDim2.new(0, screenPos.X, 0, screenPos.Y)
                label.BackgroundTransparency = 1
                label.TextColor3 = Color3.fromRGB(255, 255, 255)
                label.Text = player.Name
                label.TextSize = 14
                label.Parent = game.Players.LocalPlayer.PlayerGui
                wait(1)
                label:Destroy()
            end
        end
    end

    -- Vẽ ESP cho tất cả các người chơi trong game
    while true do
        if _G.espEnabled then
            for _, player in pairs(players:GetPlayers()) do
                if player ~= players.LocalPlayer then
                    DrawESP(player)
                end
            end
        end
        wait(0.1)
    end
end

-- Tạo mục "Misc" với các chức năng Auto Click, Fly, NoClip, ESP
local Section = MainTab:Section({
    ["Title"] = "Misc",
    ["Content"] = "Chức năng Auto Click, Fly, NoClip và ESP"
})

-- Nút bật/tắt Auto Click
Section:Toggle({
    ["Title"] = "Auto Click",
    ["Default"] = false,
    ["Callback"] = function(state)
        _G.autoClickEnabled = state  -- Bật/tắt Auto Click
        if state then
            print("Auto Click ON")
            coroutine.wrap(AutoClick)()  -- Chạy auto click khi bật
        else
            print("Auto Click OFF")
        end
    end
})

-- Nút bật/tắt Fly (Đứng Im Trên Không)
Section:Toggle({
    ["Title"] = "Fly (Đứng Im Trên Không)",
    ["Default"] = false,
    ["Callback"] = function(state)
        _G.flyEnabled = state  -- Bật/tắt Fly
        if state then
            print("Fly ON")
            coroutine.wrap(Fly)()  -- Chạy Fly khi bật
        else
            print("Fly OFF")
        end
    end
})

-- Nút bật/tắt NoClip (Xuyên Tường)
Section:Toggle({
    ["Title"] = "NoClip (Xuyên Tường)",
    ["Default"] = false,
    ["Callback"] = function(state)
        _G.noclipEnabled = state  -- Bật/tắt NoClip
        if state then
            print("NoClip ON")
            coroutine.wrap(NoClip)()  -- Chạy NoClip khi bật
        else
            print("NoClip OFF")
        end
    end
})

-- Nút bật/tắt ESP (Vị trí người chơi)
Section:Toggle({
    ["Title"] = "ESP (Hiển thị Vị trí Người Chơi)",
    ["Default"] = false,
    ["Callback"] = function(state)
        _G.espEnabled = state  -- Bật/tắt ESP
        if state then
            print("ESP ON")
            coroutine.wrap(ESP)()  -- Chạy ESP khi bật
        else
            print("ESP OFF")
        end
    end
})

-- Kiểm tra lại các trạng thái khi nhân vật chết hoặc reset
game.Players.LocalPlayer.CharacterAdded:Connect(function()
    _G.autoClickEnabled = false
    _G.flyEnabled = false
    _G.noclipEnabled = false
    _G.espEnabled = false
end)