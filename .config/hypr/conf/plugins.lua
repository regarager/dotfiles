-- hyprland-scroll-overview
hl.config({
	plugin = {
		scrolloverview = {
			scale = 0.5,
			workspace_gap = 50,
			layout = "vertical",
			wallpaper = 2,
			blur = true,

			shadow = {
				enabled = true,
				range = 50,
			},
		},
	},
})

hl.bind("ALT + Tab", function()
	hl.plugin.scrolloverview.overview("toggle all")
end)

hl.define_submap("scrolloverview", function()
	hl.bind("k", hl.plugin.scrolloverview.navigate("up"))
	hl.bind("j", hl.plugin.scrolloverview.navigate("down"))
  -- not sure what this does
	-- hl.bind("return", hl.plugin.scrolloverview.overview("select"))
	hl.bind("escape", hl.plugin.scrolloverview.overview("off"))
	hl.bind("mouse:272", function()
		hl.plugin.scrolloverview.overview("select")
		hl.plugin.scrolloverview.window("select")
		hl.plugin.scrolloverview.overview("off")
	end, { mouse = true })
	hl.bind("mouse:274", hl.plugin.scrolloverview.window("close"), { mouse = true })
end)
