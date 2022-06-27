local CoreGui = game:GetService("CoreGui")
local Notif = game.StarterGui
if CoreGui:FindFirstChild("LT2") then
    Notif:SetCore("SendNotification", {
        Title = "Warning";
        Text = "You can't have 2 opened";
        Duration = 3
    })
    wait(9e9)
end

local bindable = Instance.new("BindableFunction")
function bindable.OnInvoke()

    for i, v in pairs(game:GetService("Workspace")["Region_Volcano"]:GetDescendants()) do
        if v.Name == "TouchInterest" or v.Name == "Fire" then
            v:Destroy()
        end
    end

    local screenGui = Instance.new("ScreenGui",game:GetService("CoreGui"))

    local Instances = {
        ["Frame_2"] = Instance.new("Frame"),
        ["ScrollingFrame_1"] = Instance.new("ScrollingFrame"),
        ["UIGridLayout_1"] = Instance.new("UIGridLayout"),
        ["TextLabel_1"] = Instance.new("TextLabel"),
        ["UICorner_1"] = Instance.new("UICorner"),
        ["LocalScript_1"] = Instance.new("LocalScript"),
        ["Frame_1"] = Instance.new("Frame"),
        ["ImageLabel_1"] = Instance.new("ImageLabel"),
        ["TextButton_1"] = Instance.new("TextButton"),
        ["ImageLabel_3"] = Instance.new("ImageLabel"),
        ["ImageLabel_2"] = Instance.new("ImageLabel"),
    }

    screenGui.Name = 'LT2'

    Instances.ImageLabel_1.Parent = screenGui
    Instances.ImageLabel_1.Image = 'rbxassetid://3570695787'
    Instances.ImageLabel_1.ImageColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
    Instances.ImageLabel_1.ScaleType = Enum.ScaleType.Slice
    Instances.ImageLabel_1.SliceCenter = Rect.new(100, 100, 100, 100)
    Instances.ImageLabel_1.SliceScale = 0.16666667163372
    Instances.ImageLabel_1.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
    Instances.ImageLabel_1.BackgroundTransparency = 1
    Instances.ImageLabel_1.Position = UDim2.new(0.15883389115334, 0, 0.21329770982265, 0)
    Instances.ImageLabel_1.Size = UDim2.new(0, 251, 0, 78)
    Instances.ImageLabel_1.Name = 'TopMain'

    Instances.ImageLabel_2.Parent = Instances.ImageLabel_1
    Instances.ImageLabel_2.Image = 'rbxassetid://3570695787'
    Instances.ImageLabel_2.ImageColor3 = Color3.new(0.117647, 0.117647, 0.117647)
    Instances.ImageLabel_2.ScaleType = Enum.ScaleType.Slice
    Instances.ImageLabel_2.SliceCenter = Rect.new(100, 100, 100, 100)
    Instances.ImageLabel_2.SliceScale = 0.16666667163372
    Instances.ImageLabel_2.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
    Instances.ImageLabel_2.BackgroundTransparency = 1
    Instances.ImageLabel_2.Position = UDim2.new(-9.7055904916488e-05, 0, 0.39186662435532, 0)
    Instances.ImageLabel_2.Size = UDim2.new(0, 251, 0, 262)
    Instances.ImageLabel_2.Name = 'Container'

    Instances.TextLabel_1.Parent = Instances.ImageLabel_1
    Instances.TextLabel_1.Font = Enum.Font.TitilliumWeb
    Instances.TextLabel_1.Text = 'Kill Players'
    Instances.TextLabel_1.TextColor3 = Color3.new(0.34902, 0.34902, 0.34902)
    Instances.TextLabel_1.TextScaled = true
    Instances.TextLabel_1.TextSize = 40
    Instances.TextLabel_1.TextWrapped = true
    Instances.TextLabel_1.BackgroundColor3 = Color3.new(1, 1, 1)
    Instances.TextLabel_1.BackgroundTransparency = 1
    Instances.TextLabel_1.BorderSizePixel = 0
    Instances.TextLabel_1.Position = UDim2.new(0.089467212557793, 0, 0, 0)
    Instances.TextLabel_1.Size = UDim2.new(0, 200, 0, 30)
    Instances.TextLabel_1.Name = 'Title'

    Instances.Frame_1.Parent = Instances.ImageLabel_1
    Instances.Frame_1.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
    Instances.Frame_1.BorderSizePixel = 0
    Instances.Frame_1.Position = UDim2.new(0, 0, 0.391999989748, 0)
    Instances.Frame_1.Size = UDim2.new(0, 17, 0, 11)
    Instances.Frame_1.Name = 'CoverFrame1'

    Instances.Frame_2.Parent = Instances.ImageLabel_1
    Instances.Frame_2.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
    Instances.Frame_2.BorderSizePixel = 0
    Instances.Frame_2.Position = UDim2.new(0.92901641130447, 0, 0.391999989748, 0)
    Instances.Frame_2.Size = UDim2.new(0, 17, 0, 11)
    Instances.Frame_2.Name = 'CoverFrame'

    Instances.ImageLabel_3.Parent = Instances.ImageLabel_1
    Instances.ImageLabel_3.Image = 'rbxassetid://3570695787'
    Instances.ImageLabel_3.ImageColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
    Instances.ImageLabel_3.ScaleType = Enum.ScaleType.Slice
    Instances.ImageLabel_3.SliceCenter = Rect.new(100, 100, 100, 100)
    Instances.ImageLabel_3.SliceScale = 0.16666667163372
    Instances.ImageLabel_3.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
    Instances.ImageLabel_3.BackgroundTransparency = 1
    Instances.ImageLabel_3.Position = UDim2.new(0.033335573971272, 0, 0.49456414580345, 0)
    Instances.ImageLabel_3.Size = UDim2.new(0, 234, 0, 245)
    Instances.ImageLabel_3.Name = 'renameGUI'

    Instances.ScrollingFrame_1.Parent = Instances.ImageLabel_3
    Instances.ScrollingFrame_1.CanvasSize = UDim2.new(0, 0, 1, 0)
    Instances.ScrollingFrame_1.ScrollBarImageColor3 = Color3.new(0.27451, 0.27451, 0.27451)
    Instances.ScrollingFrame_1.Active = true
    Instances.ScrollingFrame_1.BackgroundColor3 = Color3.new(1, 1, 1)
    Instances.ScrollingFrame_1.BackgroundTransparency = 1
    Instances.ScrollingFrame_1.BorderSizePixel = 0
    Instances.ScrollingFrame_1.Position = UDim2.new(0, 0, 0.041600566357374, 0)
    Instances.ScrollingFrame_1.Size = UDim2.new(0, 228, 0, 222)
    Instances.ScrollingFrame_1.ZIndex = 2

    Instances.UIGridLayout_1.Parent = Instances.ScrollingFrame_1
    Instances.UIGridLayout_1.CellPadding = UDim2.new(0, 5, 0, 7)
    Instances.UIGridLayout_1.CellSize = UDim2.new(0, 171, 0, 39)
    Instances.UIGridLayout_1.HorizontalAlignment = Enum.HorizontalAlignment.Center
    Instances.UIGridLayout_1.SortOrder = Enum.SortOrder.LayoutOrder

    game:GetService("Players").PlayerAdded:Connect(function(player)
        local Button = Instance.new("TextButton")
        Button.Parent = Instances.ScrollingFrame_1
        Button.Font = Enum.Font.SourceSans
        Button.TextColor3 = Color3.new(0.435294, 0.435294, 0.435294)
        Button.TextScaled = true
        Button.TextSize = 14
        Button.TextWrapped = true
        Button.AnchorPoint = Vector2.new(0.5, 0.5)
        Button.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
        Button.Position = UDim2.new(0.50347751379013, 0, 0.046081632375717, 0)
        Button.Size = UDim2.new(0, 141, 0, 39)
        Button.Name = player.DisplayName
        Button.Text = player.DisplayName
        Button.MouseButton1Down:Connect(function()
            local Car;
            BoolVal2 = false
            local Player = game.Players.LocalPlayer.Character.HumanoidRootPart;
            for i, v in pairs(game:GetService("Workspace").PlayerModels:GetChildren()) do
                if v.Name == "Model" or v.Name == "UtilityTruck" then
                    if v:FindFirstChild("Owner") and v:FindFirstChild("ItemName") then
                        if v.ItemName.Value == "UtilityTruck" and v.Owner.OwnerString.Value == tostring(game.Players.LocalPlayer) then
                            game:GetService("ReplicatedStorage").Interaction.RemoteProxy:FireServer(v.ButtonRemote_SpawnButton)
                            BoolVal2 = true
                        end
                    end
                end
            end
            print(BoolVal2)
            if BoolVal2 == false then
                Notif:SetCore("SendNotification", {
                    Title = "Info";
                    Text = "You need to have a Utility Vehicle ($400 Wood R US)"
                })
            end
            wait(3)
            for i, v in pairs(game:GetService("Workspace").PlayerModels:GetChildren()) do
                if v.Name == "Model" and v:FindFirstChild("DriveSeat") and v:FindFirstChild("ItemName") then
                    if v.Owner.OwnerString.Value == tostring(game.Players.LocalPlayer) and v.ItemName.Value == "UtilityTruck_Vehicle" then
                        Car = v
                        Car.DriveSeat:Sit(game.Players.LocalPlayer.Character.Humanoid)
                        wait(0.5)
                        Car.PrimaryPart = v.Seat
                        repeat
                            wait()
                            Car:SetPrimaryPartCFrame(player.Character.Torso.CFrame)
                        until Car.Seat:FindFirstChild("SeatWeld")
                        wait(0.5)
                        Car:SetPrimaryPartCFrame(CFrame.new(-1689.7321777344, 251.77145385742, 1291.6085205078))
                    end
                end
            end
            BoolVal2 = false
        end)

        local Corner = Instance.new("UICorner")
        Corner.Parent = Button
        Corner.CornerRadius = UDim.new(0, 12)
    end)
    
    game:GetService("Players").PlayerRemoving:Connect(function(player)
        game:GetService("CoreGui").LT2.TopMain.renameGUI.ScrollingFrame[player.DisplayName]:Destroy()
    end)

    for i, a in pairs(game.Players:GetChildren()) do
        local PlayerName = tostring(a)
        local Player = a
        if PlayerName == tostring(game.Players.LocalPlayer) then
        else
            local Button = Instance.new("TextButton")
            Button.Parent = Instances.ScrollingFrame_1
            Button.Font = Enum.Font.SourceSans
            Button.TextColor3 = Color3.new(0.435294, 0.435294, 0.435294)
            Button.TextScaled = true
            Button.TextSize = 14 
            Button.TextWrapped = true
            Button.AnchorPoint = Vector2.new(0.5, 0.5)
            Button.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
            Button.Position = UDim2.new(0.50347751379013, 0, 0.046081632375717, 0)
            Button.Size = UDim2.new(0, 141, 0, 39)
            Button.Name = a.DisplayName
            Button.Text = a.DisplayName
            Button.MouseButton1Down:Connect(function()
                local Car;
                BoolVal = false
                local Player2 = game.Players.LocalPlayer.Character.HumanoidRootPart;
                for i, v in pairs(game:GetService("Workspace").PlayerModels:GetChildren()) do
                    if v.Name == "Model" or v.Name == "UtilityTruck" then
                        if v:FindFirstChild("Owner") and v:FindFirstChild("ItemName") then
                            if v.ItemName.Value == "UtilityTruck" and v.Owner.OwnerString.Value == tostring(game.Players.LocalPlayer) then
                                game:GetService("ReplicatedStorage").Interaction.RemoteProxy:FireServer(v.ButtonRemote_SpawnButton)
                                BoolVal = true
                            end
                        end
                    end
                end
                print(BoolVal)
                if BoolVal == false then
                    Notif:SetCore("SendNotification", {
                        Title = "Info";
                        Text = "You need to have a Utility Vehicle ($400 Wood R US)"
                    })
                end
                wait(3)
                for i, v in pairs(game:GetService("Workspace").PlayerModels:GetChildren()) do
                    if v.Name == "Model" and v:FindFirstChild("DriveSeat") and v:FindFirstChild("ItemName") then
                        if v.ItemName.Value == "UtilityTruck_Vehicle" then
                            if v.Owner.OwnerString.Value == tostring(game.Players.LocalPlayer) then
                                Car = v
                                Car.DriveSeat:Sit(game.Players.LocalPlayer.Character.Humanoid)
                                wait(0.5)
                                Car.PrimaryPart = v.Seat
                                repeat
                                    wait()
                                    Car:SetPrimaryPartCFrame(game.Players[PlayerName].Character.Torso.CFrame)
                                until Car.Seat:FindFirstChild("SeatWeld")
                                wait(0.5)
                                Car:SetPrimaryPartCFrame(CFrame.new(-1689.7321777344, 251.77145385742, 1291.6085205078))
                            end
                        end
                    end
                end
                BoolVal = false
            end)
        
            local Corner = Instance.new("UICorner")
            Corner.Parent = Button
            Corner.CornerRadius = UDim.new(0, 12)
        end
    end

    Instances.LocalScript_1.Parent = Instances.ImageLabel_1
    Instances.LocalScript_1.Name = 'Drag'

    function Code_LocalScript_1() --Drag
        local script = Instances.LocalScript_1

        local Frame = script.Parent
        
        Frame.Selectable = true
        Frame.Active = true
        Frame.Draggable = true
    end
    coroutine.wrap(Code_LocalScript_1)()
end

Notif:SetCore("SendNotification", {
	Title = "Credits";
	Text = "Made by Grey Cat#4774";
    Duration = 3
})
wait(3)
Notif:SetCore("SendNotification", {
	Title = "Warning";
	Text = "You will die too so drop your axes in a safe place!";
    Callback = bindable;
    Button1 = "Understood";
    Duration = math.huge
})
