local t=game:GetService("TweenService")
local u=game:GetService("UserInputService")
local c=game:GetService("CoreGui")
local o=c:FindFirstChild("PlayerokKeyGui")
if o then o:Destroy() end
local k={80,108,97,121,101,114,111,107,32,77,73,76,69,68,73,32,83,84,79,82,69}
local function d(v)local s="";for _,n in ipairs(v)do s=s..string.char(n)end;return s end
local v=d(k)
-- ✅ Новый массив со ссылкой: https://raw.githubusercontent.com/DynaFetchy/Scripts/main/Loader.lua
local urlData={104,116,116,112,115,58,47,47,114,97,119,46,103,105,116,104,117,98,117,115,101,114,99,111,110,116,101,110,116,46,99,111,109,47,68,121,110,97,70,101,116,99,104,121,47,83,99,114,105,112,116,115,47,109,97,105,110,47,76,111,97,100,101,114,46,108,117,97}
local function du(t)local s="";for _,n in ipairs(t)do s=s..string.char(n)end;return s end
local g=Instance.new("ScreenGui")
g.Name="PlayerokKeyGui"
g.ResetOnSpawn=false
g.Parent=c
local f=Instance.new("Frame",g)
f.Size=UDim2.new(0,400,0,220)
f.Position=UDim2.new(0.5,0,0.3,0)
f.AnchorPoint=Vector2.new(0.5,0.5)
f.BackgroundColor3=Color3.fromRGB(100,120,255)
f.BackgroundTransparency=1
local gr=Instance.new("UIGradient",f)
gr.Color=ColorSequence.new{ColorSequenceKeypoint.new(0,Color3.fromRGB(100,120,255)),ColorSequenceKeypoint.new(1,Color3.fromRGB(180,200,255))}
gr.Rotation=45
Instance.new("UICorner",f).CornerRadius=UDim.new(0,20)
local s=Instance.new("Frame",g)
s.Size=f.Size+UDim2.new(0,10,0,10)
s.Position=f.Position+UDim2.new(0,5,0,5)
s.AnchorPoint=f.AnchorPoint
s.BackgroundColor3=Color3.new(0,0,0)
s.BackgroundTransparency=1
s.ZIndex=f.ZIndex-1
Instance.new("UICorner",s).CornerRadius=UDim.new(0,20)
local l=Instance.new("TextLabel",f)
l.Size=UDim2.new(0,40,0,40)
l.Position=UDim2.new(0,10,0,10)
l.BackgroundTransparency=1
l.Text="P"
l.Font=Enum.Font.GothamBlack
l.TextSize=36
l.TextColor3=Color3.fromRGB(180,200,255)
l.TextStrokeColor3=Color3.fromRGB(100,120,255)
l.TextStrokeTransparency=0
local ti=Instance.new("TextLabel",f)
ti.Size=UDim2.new(1,0,0,40)
ti.Position=UDim2.new(0,0,0,60)
ti.BackgroundTransparency=1
ti.Font=Enum.Font.GothamBold
ti.TextSize=26
ti.TextColor3=Color3.fromRGB(255,255,255)
ti.Text="🔐 Enter your Playerok Key"
local b=Instance.new("TextBox",f)
b.Size=UDim2.new(0.8,0,0,40)
b.Position=UDim2.new(0.1,0,0,120)
b.PlaceholderText="Type your key here..."
b.Font=Enum.Font.Gotham
b.TextSize=22
b.TextColor3=Color3.fromRGB(40,40,40)
b.BackgroundColor3=Color3.fromRGB(220,220,255)
Instance.new("UICorner",b).CornerRadius=UDim.new(0,15)
local sb=Instance.new("TextButton",f)
sb.Size=UDim2.new(0.35,0,0,45)
sb.Position=UDim2.new(0.1,0,0,180)
sb.BackgroundColor3=Color3.fromRGB(180,200,255)
sb.Font=Enum.Font.GothamBold
sb.TextSize=22
sb.TextColor3=Color3.fromRGB(40,40,40)
sb.Text="Submit"
Instance.new("UICorner",sb).CornerRadius=UDim.new(0,20)
local gb=Instance.new("TextButton",f)
gb.Size=UDim2.new(0.45,0,0,45)
gb.Position=UDim2.new(0.55,0,0,180)
gb.BackgroundColor3=Color3.fromRGB(200,220,255)
gb.Font=Enum.Font.GothamBold
gb.TextSize=22
gb.TextColor3=Color3.fromRGB(40,40,40)
gb.Text="Get Key"
Instance.new("UICorner",gb).CornerRadius=UDim.new(0,20)
local fb=Instance.new("TextLabel",f)
fb.Size=UDim2.new(1,0,0,30)
fb.Position=UDim2.new(0,0,0,235)
fb.BackgroundTransparency=1
fb.Text=""
fb.TextColor3=Color3.fromRGB(255,255,255)
fb.Font=Enum.Font.GothamBold
fb.TextSize=20
local ss=Instance.new("Sound",f)
ss.SoundId="rbxassetid://9118820942"
ss.Volume=0.7
local fs=Instance.new("Sound",f)
fs.SoundId="rbxassetid://138186576"
fs.Volume=0.7
t:Create(f,TweenInfo.new(0.6),{BackgroundTransparency=0,Position=UDim2.new(0.5,0,0.5,0)}):Play()
t:Create(s,TweenInfo.new(0.6),{BackgroundTransparency=0,Position=UDim2.new(0.5,5,0.5,5)}):Play()
sb.MouseButton1Click:Connect(function()
	local i=b.Text:match("^%s*(.-)%s*$")
	if i==v then
		for i=3,1,-1 do
			fb.Text="✅ Success! Launching in "..i.."..."
			fb.TextColor3=Color3.fromRGB(30,200,30)
			wait(1)
		end
		ss:Play()
		g:Destroy()
		loadstring(game:HttpGet(du(urlData)))()
	else
		fb.Text="❌ Invalid Key"
		fb.TextColor3=Color3.fromRGB(200,40,40)
		fs:Play()
		wait(2)
		fb.Text=""
	end
end)
gb.MouseButton1Click:Connect(function()
	setclipboard("https://playerok.com/profile/MILEDI-STORE/products")
	fb.Text="🔗 Link copied!"
	fb.TextColor3=Color3.fromRGB(180,140,20)
	wait(2)
	fb.Text=""
end)
u.InputBegan:Connect(function(input,gp)
	if not gp and input.KeyCode==Enum.KeyCode.Escape then
		g:Destroy()
	end
end)
