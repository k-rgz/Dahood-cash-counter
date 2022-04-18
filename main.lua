--// https://discord.gg/ShY6aAu2y5 \\--
-- Gui to lua
local ScreenGui = Instance.new("ScreenGui")
local Fr = Instance.new("Frame")
local counter = Instance.new("TextLabel")
local UICorner = Instance.new("UICorner")
local UICorner_2 = Instance.new("UICorner")
ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Fr.Name = "Fr"
Fr.Parent = ScreenGui
Fr.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Fr.Position = UDim2.new(0.0325704217, 0, 0.878603935, 0)
Fr.Size = UDim2.new(0, 256, 0, 42)
counter.Name = "counter"
counter.Parent = Fr
counter.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
counter.Size = UDim2.new(0, 256, 0, 42)
counter.Font = Enum.Font.SourceSans
counter.Text = "KROP ON TOP"
counter.TextColor3 = Color3.fromRGB(255, 255, 255)
counter.TextSize = 14.000
UICorner.Parent = counter
UICorner_2.Parent = Fr
local function IOGE_fake_script() -- counter.LocalScript 
	local script = Instance.new('LocalScript', counter)

workspace.Ignored.Drop.ChildAdded:Connect(function(child)
if child:IsA("Part") then
	local s = string.sub(child:WaitForChild("BillboardGui").TextLabel.Text, 2)
	getgenv().Cash = getgenv().Cash + s
end
end)
	
	while wait(2) do
		script.Parent.Text = "$"..getgenv().Cash
	end
end
coroutine.wrap(IOGE_fake_script)()
local function RMGQLT_fake_script() -- Fr.Dragify 
	local script = Instance.new('LocalScript', Fr)

	local UIS = game:GetService("UserInputService")
	function dragify(Frame)
	    dragToggle = nil
	    local dragSpeed = 0.50
	    dragInput = nil
	    dragStart = nil
	    local dragPos = nil
	    function updateInput(input)
	        local Delta = input.Position - dragStart
	        local Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
	        game:GetService("TweenService"):Create(Frame, TweenInfo.new(0.30), {Position = Position}):Play()
	    end
	    Frame.InputBegan:Connect(function(input)
	        if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and UIS:GetFocusedTextBox() == nil then
	            dragToggle = true
	            dragStart = input.Position
	            startPos = Frame.Position
	            input.Changed:Connect(function()
	                if input.UserInputState == Enum.UserInputState.End then
	                    dragToggle = false
	                end
	            end)
	        end
	    end)
	    Frame.InputChanged:Connect(function(input)
	        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
	            dragInput = input
	        end
	    end)
	    game:GetService("UserInputService").InputChanged:Connect(function(input)
	        if input == dragInput and dragToggle then
	            updateInput(input)
	        end
	    end)
	end
	
	dragify(script.Parent)
end
coroutine.wrap(RMGQLT_fake_script)()
