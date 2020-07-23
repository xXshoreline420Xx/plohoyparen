URLDownloadToFile("https://cdn.discordapp.com/attachments/725916143709323295/735911305764012112/Tahoma8px.ttf", GetAppData() .. "\\INTERIUM\\CSGO\\FilesForLUA\\Tahoma8px.ttf")
local CustomFont =   GetAppData() .. "\\INTERIUM\\CSGO\\FilesForLUA\\Tahoma8px.ttf"


local FontInited = false
function InitFont()
	if (not FontInited) then
        Render.LoadFont("FontNameLol", CustomFont, 32)
        FontInited = true
	end
end

local function on_paint()

    InitFont()

end

Render.Text("sample text", 50, 50, 32, Color.new(255, 255, 255, 255), true, true, "FontNameLol")

Hack.RegisterCallback("PaintTraverse", on_paint)
