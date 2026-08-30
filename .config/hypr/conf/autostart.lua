local programs = require("conf.programs")

hl.on("hyprland.start", function()
	hl.exec_cmd("hyprpaper")
	hl.exec_cmd("hypridle")
	hl.exec_cmd("waybar")
	hl.exec_cmd("mako")
	hl.exec_cmd("mpd")
	hl.exec_cmd("/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1")

	hl.exec_cmd("vesktop", { workspace = 1 })
	hl.exec_cmd(programs.browser, { workspace = 2 })

  hl.exec_cmd("hyprpm reload")
end)
