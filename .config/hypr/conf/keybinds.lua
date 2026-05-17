local programs = require("conf.programs")
local mainMod = "SUPER"

-- Basic binds
hl.bind(mainMod .. "+ T", hl.dsp.exec_cmd(programs.terminal))
hl.bind("SUPER + SHIFT + code:201", hl.dsp.exec_cmd(programs.terminal .. " -e /bin/zsh -l"))
hl.bind(mainMod .. "+ F", hl.dsp.exec_cmd(programs.browser))
hl.bind(mainMod .. "+ Q", hl.dsp.window.close())
hl.bind(mainMod .. "+ SHIFT + L", hl.dsp.exec_cmd("hyprlock"))
hl.bind(mainMod .. "+ E", hl.dsp.exec_cmd(programs.fileManager))
hl.bind(mainMod .. "+ V", hl.dsp.window.float())
hl.bind(mainMod .. "+ SPACE", hl.dsp.exec_cmd(programs.menu))
hl.bind(mainMod .. "+ P", hl.dsp.window.pseudo())

-- Move focus
hl.bind(mainMod .. " + H", hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + L", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + K", hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + J", hl.dsp.focus({ direction = "down" }))

-- Workspaces
for i = 1, 9 do
	hl.bind(mainMod .. " + " .. tostring(i), hl.dsp.focus({ workspace = i }))
	hl.bind(mainMod .. " + SHIFT + " .. tostring(i), hl.dsp.window.move({ workspace = i }))
end

-- Move to next/prev workspace
hl.bind(mainMod .. " + bracketright", hl.dsp.focus({ workspace = "+1" }))
hl.bind(mainMod .. " + bracketleft", hl.dsp.focus({ workspace = "-1" }))

-- Fullscreen
hl.bind(mainMod .. " + SHIFT + F", hl.dsp.window.fullscreen())

-- Mouse binds
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag())
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize())

-- Screenshots (grimblast)
hl.bind(
	"CONTROL + ALT + Control_L + Alt_L + 3",
	hl.dsp.exec_cmd("grimblast --notify --freeze copysave output ~/Pictures/Screenshots/$(date +%Y-%m-%d_%H-%m-%s).png"),
	{ release = true }
)
hl.bind(
	"CONTROL + ALT + Control_L + Alt_L + 4",
	hl.dsp.exec_cmd("hyprpicker --autocopy --format=hex --lower"),
	{ release = true }
)
hl.bind(
	"CONTROL + ALT + Control_L + Alt_L + 5",
	hl.dsp.exec_cmd("grimblast --notify --freeze copysave area ~/Pictures/Screenshots/$(date +%Y-%m-%d_%H-%m-%s).png"),
	{ release = true }
)

-- Media keys
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl set +5%"))
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl set 5-%"))
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("pactl set-sink-volume @DEFAULT_SINK@ +5%"))
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("pactl set-sink-volume @DEFAULT_SINK@ -5%"))
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("pactl set-sink-mute @DEFAULT_SINK@ toggle"))

-- Scripts
hl.bind(mainMod .. " + Backspace", hl.dsp.exec_cmd("rofi -show p -modi p:rofi-power-menu"))
hl.bind("CONTROL + SHIFT + M", hl.dsp.pass({ window = "class:vesktop" }))
