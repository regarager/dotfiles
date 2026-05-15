hl.config({
	input = {
		kb_layout = "us,de",
		kb_options = "grp:alt_altgr_toggle",
		follow_mouse = 1,
		sensitivity = 0,
		accel_profile = "flat",
		touchpad = {
			natural_scroll = false,
			scroll_factor = 0.5,
			tap_to_click = false,
		},
	},
})

hl.gesture({
  fingers = 3,
  direction = "horizontal",
  action = "workspace"
})
