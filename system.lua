local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local SubTitle = Instance.new("TextLabel")
local KeyBox = Instance.new("TextBox")
local GetKeyButton = Instance.new("TextButton")
local CheckButton = Instance.new("TextButton")

-- Cấu hình giao diện
ScreenGui.Parent = game.CoreGui

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame.Position = UDim2.new(0.5, -150, 0.5, -100)
Frame.Size = UDim2.new(0, 300, 0, 250)

-- Tiêu đề lớn
Title.Parent = Frame
Title.BackgroundTransparency = 1
Title.Position = UDim2.new(0.1, 0, 0, 0)
Title.Size = UDim2.new(0.8, 0, 0.2, 0)
Title.Font = Enum.Font.SourceSansBold
Title.Text = "Teddy Hub"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextScaled = true

-- Tiêu đề nhỏ
SubTitle.Parent = Frame
SubTitle.BackgroundTransparency = 1
SubTitle.Position = UDim2.new(0.1, 0, 0.15, 0)
SubTitle.Size = UDim2.new(0.8, 0, 0.1, 0)
SubTitle.Font = Enum.Font.SourceSansItalic
SubTitle.Text = "Update 10/03/2025"
SubTitle.TextColor3 = Color3.fromRGB(200, 200, 200)
SubTitle.TextScaled = true

KeyBox.Parent = Frame
KeyBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
KeyBox.Position = UDim2.new(0.1, 0, 0.35, 0)
KeyBox.Size = UDim2.new(0.8, 0, 0.15, 0)
KeyBox.PlaceholderText = "Enter Key"
KeyBox.Font = Enum.Font.Gotham
KeyBox.TextScaled = true

GetKeyButton.Parent = Frame
GetKeyButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
GetKeyButton.Position = UDim2.new(0.1, 0, 0.55, 0)
GetKeyButton.Size = UDim2.new(0.35, 0, 0.15, 0)
GetKeyButton.Text = "Get Link"
GetKeyButton.Font = Enum.Font.GothamBold
GetKeyButton.TextScaled = true

CheckButton.Parent = Frame
CheckButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CheckButton.Position = UDim2.new(0.55, 0, 0.55, 0)
CheckButton.Size = UDim2.new(0.35, 0, 0.15, 0)
CheckButton.Text = "Check"
CheckButton.Font = Enum.Font.GothamBold
CheckButton.TextScaled = true

-- Danh sách các key hợp lệ
local validKeys = {
    "teddySkibidi2025", -- Thay thế các key hợp lệ
    "key2",
    "key3"
}

-- Chức năng nút GetKey
GetKeyButton.MouseButton1Click:Connect(function()
    setclipboard("https://link4m.com/XUiaBFo") -- Thay thế bằng link lấy key
    game.StarterGui:SetCore("SendNotification", {
        Title = "Copied",
        Text = "Link get key đã được sao chép!",
        Duration = 5
    })
end)

-- Chức năng nút Check
CheckButton.MouseButton1Click:Connect(function()
    local inputKey = KeyBox.Text
    if table.find(validKeys, inputKey) then
        Frame:Destroy() -- Xóa khung nhập key sau khi đúng key
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ccditmethkskider/Ducv4/refs/heads/main/cccc"))()
    else
        game.StarterGui:SetCore("SendNotification", {
            Title = "Key sai đụ má mày",
            Text = "ditme!",
            Duration = 5
        })
    end
end)
