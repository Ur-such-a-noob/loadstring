"local Players = game:GetService(\"Players\")\r\nlocal localPlayer = Players.LocalPlayer\r\nlocal workspace = game:GetService(\"Workspace\")\r\n\r\n-- Create ScreenGui\r\nlocal screenGui = Instance.new(\"ScreenGui\")\r\nscreenGui.Parent = localPlayer:WaitForChild(\"PlayerGui\")\r\n\r\n-- Create Frame\r\nlocal frame = Instance.new(\"Frame\")\r\nframe.Parent = screenGui\r\nframe.Size = UDim2.new(0.3, 0, 0.4, 0)\r\nframe.Position = UDim2.new(0.35, 0, 0.3, 0)\r\nframe.BackgroundTransparency = 0.1\r\nframe.BackgroundColor3 = Color3.fromRGB(40, 40, 40)\r\nframe.BorderSizePixel = 0\r\nframe.Active = true\r\nframe.Draggable = true\r\n\r\n-- Add UICorner to Frame for rounded corners\r\nlocal frameCorner = Instance.new(\"UICorner\")\r\nframeCorner.CornerRadius = UDim.new(0, 10)\r\nframeCorner.Parent = frame\r\n\r\n-- Add UIStroke to Frame for border\r\nlocal frameStroke = Instance.new(\"UIStroke\")\r\nframeStroke.Color = Color3.fromRGB(255, 255, 255)\r\nframeStroke.Thickness = 2\r\nframeStroke.Parent = frame\r\n\r\n-- Add shadow to Frame\r\nlocal frameShadow = Instance.new(\"ImageLabel\")\r\nframeShadow.Parent = frame\r\nframeShadow.AnchorPoint = Vector2.new(0.5, 0.5)\r\nframeShadow.Position = UDim2.new(0.5, 0, 0.5, 0)\r\nframeShadow.Size = UDim2.new(1, 20, 1, 20)\r\nframeShadow.BackgroundTransparency = 1\r\nframeShadow.Image = \"rbxassetid://1316045217\"\r\nframeShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)\r\nframeShadow.ImageTransparency = 0.7\r\nframeShadow.ScaleType = Enum.ScaleType.Slice\r\nframeShadow.SliceCenter = Rect.new(10, 10, 118, 118)\r\n\r\n-- Create Title Bar\r\nlocal titleBar = Instance.new(\"Frame\")\r\ntitleBar.Parent = frame\r\ntitleBar.Size = UDim2.new(1, 0, 0.15, 0)\r\ntitleBar.BackgroundColor3 = Color3.fromRGB(60, 60, 60)\r\ntitleBar.BorderSizePixel = 0\r\n\r\nlocal titleLabel = Instance.new(\"TextLabel\")\r\ntitleLabel.Parent = titleBar\r\ntitleLabel.Size = UDim2.new(0.8, 0, 1, 0)\r\ntitleLabel.Position = UDim2.new(0.05, 0, 0, 0)\r\ntitleLabel.Text = \"Baseplate Generator\"\r\ntitleLabel.TextScaled = true\r\ntitleLabel.BackgroundTransparency = 1\r\ntitleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)\r\ntitleLabel.Font = Enum.Font.GothamBold\r\n\r\n-- Create Close Button\r\nlocal closeButton = Instance.new(\"TextButton\")\r\ncloseButton.Parent = titleBar\r\ncloseButton.Size = UDim2.new(0.1, 0, 1, 0)\r\ncloseButton.Position = UDim2.new(0.9, 0, 0, 0)\r\ncloseButton.Text = \"X\"\r\ncloseButton.TextScaled = true\r\ncloseButton.BackgroundColor3 = Color3.fromRGB(255, 80, 80)\r\ncloseButton.TextColor3 = Color3.fromRGB(255, 255, 255)\r\ncloseButton.BorderSizePixel = 0\r\ncloseButton.Font = Enum.Font.GothamBold\r\n\r\n-- Add UICorner to Close Button\r\nlocal closeButtonCorner = Instance.new(\"UICorner\")\r\ncloseButtonCorner.CornerRadius = UDim.new(0, 5)\r\ncloseButtonCorner.Parent = closeButton\r\n\r\ncloseButton.MouseButton1Click:Connect(function()\r\n    screenGui:Destroy()\r\nend)\r\n\r\n-- Create Number Input\r\nlocal numberInput = Instance.new(\"TextBox\")\r\nnumberInput.Parent = frame\r\nnumberInput.Position = UDim2.new(0.1, 0, 0.25, 0)\r\nnumberInput.Size = UDim2.new(0.8, 0, 0.15, 0)\r\nnumberInput.Text = \"Enter a number\"\r\nnumberInput.ClearTextOnFocus = true\r\nnumberInput.TextScaled = true\r\nnumberInput.BackgroundColor3 = Color3.fromRGB(255, 255, 255)\r\nnumberInput.TextColor3 = Color3.fromRGB(0, 0, 0)\r\nnumberInput.BorderSizePixel = 0\r\nnumberInput.Font = Enum.Font.Gotham\r\n\r\n-- Add UICorner to Number Input\r\nlocal numberInputCorner = Instance.new(\"UICorner\")\r\nnumberInputCorner.CornerRadius = UDim.new(0, 5)\r\nnumberInputCorner.Parent = numberInput\r\n\r\n-- Create Generate Button\r\nlocal generateButton = Instance.new(\"TextButton\")\r\ngenerateButton.Parent = frame\r\ngenerateButton.Position = UDim2.new(0.1, 0, 0.45, 0)\r\ngenerateButton.Size = UDim2.new(0.8, 0, 0.2, 0)\r\ngenerateButton.Text = \"Generate\"\r\ngenerateButton.TextScaled = true\r\ngenerateButton.BackgroundColor3 = Color3.fromRGB(100, 255, 100)\r\ngenerateButton.TextColor3 = Color3.fromRGB(0, 0, 0)\r\ngenerateButton.BorderSizePixel = 0\r\ngenerateButton.Font = Enum.Font.GothamBold\r\n\r\n-- Add UICorner to Generate Button\r\nlocal generateButtonCorner = Instance.new(\"UICorner\")\r\ngenerateButtonCorner.CornerRadius = UDim.new(0, 5)\r\ngenerateButtonCorner.Parent = generateButton\r\n\r\n-- Create Footer for better design balance\r\nlocal footer = Instance.new(\"Frame\")\r\nfooter.Parent = frame\r\nfooter.Size = UDim2.new(1, 0, 0.1, 0)\r\nfooter.Position = UDim2.new(0, 0, 0.9, 0)\r\nfooter.BackgroundColor3 = Color3.fromRGB(60, 60, 60)\r\nfooter.BorderSizePixel = 0\r\n\r\nlocal footerLabel = Instance.new(\"TextLabel\")\r\nfooterLabel.Parent = footer\r\nfooterLabel.Size = UDim2.new(1, 0, 1, 0)\r\nfooterLabel.Text = \"Created by osplurm on Discord\"\r\nfooterLabel.TextScaled = true\r\nfooterLabel.BackgroundTransparency = 1\r\nfooterLabel.TextColor3 = Color3.fromRGB(255, 255, 255)\r\nfooterLabel.Font = Enum.Font.Gotham\r\n\r\ngenerateButton.MouseButton1Click:Connect(function()\r\n    local numBaseplates = tonumber(numberInput.Text)\r\n    \r\n    if not numBaseplates then\r\n        warn(\"Please enter a valid number.\")\r\n        return\r\n    end\r\n\r\n    local baseplate = workspace:FindFirstChild(\"Baseplate\")\r\n    \r\n    if not baseplate then\r\n        warn(\"Baseplate not found in the workspace.\")\r\n        return\r\n    end\r\n\r\n    local baseplateSize = baseplate.Size\r\n\r\n    for x = -numBaseplates, numBaseplates do\r\n        for z = -numBaseplates, numBaseplates do\r\n            if x == 0 and z == 0 then continue end\r\n\r\n            local newBaseplate = baseplate:Clone()\r\n            newBaseplate.Parent = workspace\r\n            newBaseplate.CFrame = baseplate.CFrame * CFrame.new(x * baseplateSize.X, 0, z * baseplateSize.Z)\r\n        end\r\n    end\r\nend)"