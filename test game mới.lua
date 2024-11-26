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

local MainTab = DeltaGui:MakeTab("Misc")  -- Đổi tên từ "Test chức năng" thành "Misc"

-- Biến trạng thái toàn cục
_G.pushUpEnabled = false
_G.invincibleEnabled = false
_G.autoClickEnabled = false
_G.noclipEnabled = false
_G.sizeBugEnabled = false  -- Trạng thái phóng to nhân vật
_G.invisibleEnabled = false  -- Trạng thái tàng hình
_G.teleportEnabled = false  -- Trạng thái dịch chuyển lên cao

-- Hàm bật bất tử
local function BecomeInvincible()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()

    -- Ngừng nhận sát thương và luôn khôi phục máu
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

-- Hàm bật tàng hình
local function BecomeInvisible()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()

    -- Làm nhân vật tàng hình và tắt các phần hình ảnh
    while true do
        if _G.invisibleEnabled then
            character:FindFirstChild("Head"):Destroy()  -- Ẩn đầu nhân vật
            for _, part in pairs(character:GetChildren()) do
                if part:IsA("MeshPart") or part:IsA("Part") then
                    part.Transparency = 1  -- Tạo tàng hình
                    part.CanCollide = false  -- Tắt va chạm
                end
            end
        else
            -- Khi tắt tàng hình, phục hồi lại tất cả các phần cơ thể
            for _, part in pairs(character:GetChildren()) do
                if part:IsA("MeshPart") or part:IsA("Part") then
                    part.Transparency = 0  -- Phục hồi độ trong suốt
                    part.CanCollide = true  -- Bật va chạm
                end
            end
        end
        wait(0.1)  -- Kiểm tra liên tục
    end
end

-- Hàm dịch chuyển lên cao (vị trí tít cao giữa map)
local function TeleportToSky()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    
    while true do
        if _G.teleportEnabled then
            -- Dịch chuyển lên một vị trí tít cao
            local targetPosition = Vector3.new(0, 500, 0)  -- Dịch chuyển lên vị trí X=0, Y=500, Z=0
            character:SetPrimaryPartCFrame(CFrame.new(targetPosition))  -- Thực hiện dịch chuyển
        end
        wait(0.5)  -- Kiểm tra mỗi 0.5 giây
    end
end

-- Hàm tăng kích thước nhân vật (phóng to)
local function BugSize()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()

    -- Thay đổi kích thước của các bộ phận cơ thể
    while true do
        if _G.sizeBugEnabled then
            for _, part in pairs(character:GetDescendants()) do
                if part:IsA("BasePart") then
                    part.Size = part.Size * 200000 -- Phóng to mỗi phần cơ thể
                end
            end
        end
        wait(0.5)  -- Điều chỉnh tốc độ bug kích thước
    end
end

-- Hàm Auto Click
local function AutoClick()
    while _G.autoClickEnabled do
        game:GetService("Players").LocalPlayer:RequestStreamAroundAsync(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)  -- Lệnh giả lập click
        wait(0.01)  -- Tốc độ click nhanh
    end
end

-- Tạo mục "Misc" với các chức năng Fast PushUp, Invincible, Auto Click, Noclip, BugSize và Invisible
local Section = MainTab:Section({
    ["Title"] = "Misc",
    ["Content"] = "Chức năng tăng tốc đẩy tạ, bất tử, auto click, xuyên tường, phóng to nhân vật và tàng hình"
})

-- Nút bật/tắt Auto Click
Section:Toggle({
    ["Title"] = "Auto Click Siêu Nhanh",
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

-- Nút bật/tắt Tàng Hình
Section:Toggle({
    ["Title"] = "Bật/Tắt Tàng Hình",
    ["Default"] = false,
    ["Callback"] = function(state)
        _G.invisibleEnabled = state  -- Bật/tắt Tàng Hình
        if state then
            print("Invisible ON")
        else
            print("Invisible OFF")
        end
    end
})

-- Nút bật/tắt Dịch Chuyển lên cao
Section:Toggle({
    ["Title"] = "Bật/Tắt Dịch Chuyển lên Cao",
    ["Default"] = false,
    ["Callback"] = function(state)
        _G.teleportEnabled = state  -- Bật/tắt Dịch Chuyển lên cao
        if state then
            print("Teleport to Sky ON")
        else
            print("Teleport to Sky OFF")
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
coroutine.wrap(BecomeInvincible)()
coroutine.wrap(BecomeInvisible)()
coroutine.wrap(TeleportToSky)()
coroutine.wrap(BugSize)()