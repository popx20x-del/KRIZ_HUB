local CoreGui = game:GetService("CoreGui")

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "KrizHub_FinalCopy"
ScreenGui.Parent = CoreGui

local MainFrame = Instance.new("Frame")
MainFrame.Parent = ScreenGui
MainFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
MainFrame.BackgroundTransparency = 0.2 
MainFrame.Position = UDim2.new(0.5, -180, 0.5, -90)
MainFrame.Size = UDim2.new(0, 360, 0, 180)
MainFrame.Active = true
MainFrame.Draggable = true

local MainCorner = Instance.new("UICorner")
MainCorner.CornerRadius = UDim.new(0, 12)
MainCorner.Parent = MainFrame

local Title = Instance.new("TextLabel")
Title.Parent = MainFrame
Title.Text = "KRIZ HUB UPDATE"
Title.TextColor3 = Color3.fromRGB(255, 255, 0)
Title.Size = UDim2.new(1, 0, 0, 45)
Title.BackgroundTransparency = 1
Title.Font = Enum.Font.GothamBold
Title.TextSize = 22

local Info = Instance.new("TextLabel")
Info.Parent = MainFrame
Info.Text = "กดปุ่มด้านล่างเพื่อรับสคริปต์ตัวใหม่"
Info.TextColor3 = Color3.fromRGB(255, 255, 255)
Info.Position = UDim2.new(0, 0, 0, 45)
Info.Size = UDim2.new(1, 0, 0, 30)
Info.BackgroundTransparency = 1
Info.Font = Enum.Font.Gotham
Info.TextSize = 14

local CopyBtn = Instance.new("TextButton")
CopyBtn.Parent = MainFrame
CopyBtn.BackgroundColor3 = Color3.fromRGB(0, 120, 255)
CopyBtn.Position = UDim2.new(0.1, 0, 0.6, 0)
CopyBtn.Size = UDim2.new(0.8, 0, 0, 50)
CopyBtn.Text = ">>> คัดลอกสคริปต์ใหม่ <<<"
CopyBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
CopyBtn.Font = Enum.Font.GothamBold
CopyBtn.TextSize = 18

local BtnCorner = Instance.new("UICorner")
BtnCorner.CornerRadius = UDim.new(0, 10)
BtnCorner.Parent = CopyBtn

CopyBtn.MouseButton1Click:Connect(function()
    local scriptText = 'loadstring(game:HttpGet("https://raw.githubusercontent.com/popx20x-del/KRIZ_HUB/main/KRIZ_HUB"))()'
    setclipboard(scriptText)
    CopyBtn.Text = "คัดลอกสำเร็จแล้ว!"
    CopyBtn.BackgroundColor3 = Color3.fromRGB(0, 200, 100)
    wait(2)
    CopyBtn.Text = ">>> คัดลอกสคริปต์ใหม่ <<<"
    CopyBtn.BackgroundColor3 = Color3.fromRGB(0, 120, 255)
end)

local CloseBtn = Instance.new("TextButton")
CloseBtn.Parent = MainFrame
CloseBtn.BackgroundColor3 = Color3.fromRGB(255, 50, 50)
CloseBtn.Position = UDim2.new(1, -30, 0, 5)
CloseBtn.Size = UDim2.new(0, 25, 0, 25)
CloseBtn.Text = "X"
CloseBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
CloseBtn.Font = Enum.Font.GothamBold
CloseBtn.TextSize = 16

local CloseCorner = Instance.new("UICorner")
CloseCorner.CornerRadius = UDim.new(1, 0)
CloseCorner.Parent = CloseBtn

CloseBtn.MouseButton1Click:Connect(function()
    ScreenGui:Destroy()
end)


