hl.config({
	general = {
		gaps_in = 0,
		gaps_out = 0,
		border_size = 2,
		col = {
			active_border = "rgba(7e9cd8ff)",
			inactive_border = "rgba(595959aa)",
		},
		resize_on_border = true,
		allow_tearing = false,
		layout = "dwindle",
		-- layout = "master",
	},
	decoration = {
		rounding = 0,
		active_opacity = 1.0,
		inactive_opacity = 1.0,
		blur = {
			enabled = true,
			size = 3,
			passes = 1,
			vibrancy = 0.1696,
		},
	},
	dwindle = {
		preserve_split = true,
	},
	master = {
		new_status = "master",
	},
	misc = {
		force_default_wallpaper = 0,
		disable_hyprland_logo = false,
		allow_session_lock_restore = 1,
	},
})

hl.layer_rule({ match = { namespace = "hyprpicker" }, no_anim = true })
hl.layer_rule({ match = { namespace = "selection" }, no_anim = true })

hl.window_rule({ match = { class = ".*" }, suppress_event = "maximize" })
hl.window_rule({
	name = "floating",
	match = { class = "xdg-desktop-portal-gtk" },
	float = true,
	center = true,
	size = { 800, 600 },
})

hl.curve("bounce", { type = "bezier", points = { { 0.0, 1.25 }, { 0.15, 1.0 } } })
hl.curve("buttery", { type = "bezier", points = { { 0.1, 1.15 }, { 0.15, 1.02 } } })
hl.curve("smooth", { type = "bezier", points = { { 0.0, 0.0 }, { 0.12, 1.0 } } })
hl.curve("linear", { type = "bezier", points = { { 0.0, 0.0 }, { 1.0, 1.0 } } })

hl.animation({ leaf = "windowsIn", enabled = true, speed = 4.5, bezier = "bounce", style = "slide" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 3.5, bezier = "smooth", style = "slide" })
hl.animation({ leaf = "windowsMove", enabled = true, speed = 4, bezier = "buttery", style = "slide" })

hl.animation({ leaf = "fadeIn", enabled = true, speed = 3.5, bezier = "smooth" })
hl.animation({ leaf = "fadeOut", enabled = true, speed = 3, bezier = "smooth" })
hl.animation({ leaf = "fadeDim", enabled = true, speed = 4, bezier = "smooth" })
hl.animation({ leaf = "fadeShadow", enabled = true, speed = 4, bezier = "smooth" })

hl.animation({ leaf = "border", enabled = true, speed = 7, bezier = "smooth" })
hl.animation({ leaf = "borderangle", enabled = true, speed = 35, bezier = "linear", style = "loop" })

hl.animation({ leaf = "layersIn", enabled = true, speed = 4, bezier = "bounce", style = "slide" })
hl.animation({ leaf = "layersOut", enabled = true, speed = 3, bezier = "smooth", style = "slide" })
