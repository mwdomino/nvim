return {
	"goolord/alpha-nvim",
	cond = false,
	event = "VimEnter",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")

		dashboard.section.header.val = {
			" ",
			" ",
			" ",
			"   ███╗   ███╗ █████╗ ██╗  ██╗███████╗   ",
			"   ████╗ ████║██╔══██╗██║ ██╔╝██╔════╝   ",
			"   ██╔████╔██║███████║█████╔╝ █████╗     ",
			"   ██║╚██╔╝██║██╔══██║██╔═██╗ ██╔══╝     ",
			"   ██║ ╚═╝ ██║██║  ██║██║  ██╗███████╗   ",
			"   ╚═╝     ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝   ",
			"      ██████╗ ██████╗  ██████╗ ██╗        ",
			"     ██╔════╝██╔═══██╗██╔═══██╗██║        ",
			"     ██║     ██║   ██║██║   ██║██║        ",
			"     ██║     ██║   ██║██║   ██║██║        ",
			"     ╚██████╗╚██████╔╝╚██████╔╝███████╗   ",
			"      ╚═════╝ ╚═════╝  ╚═════╝ ╚══════╝   ",
			"███████╗████████╗██╗   ██╗███████╗███████╗",
			"██╔════╝╚══██╔══╝██║   ██║██╔════╝██╔════╝",
			"███████╗   ██║   ██║   ██║█████╗  █████╗  ",
			"╚════██║   ██║   ██║   ██║██╔══╝  ██╔══╝  ",
			"███████║   ██║   ╚██████╔╝██║     ██║     ",
			"╚══════╝   ╚═╝    ╚═════╝ ╚═╝     ╚═╝     ",
		}

		dashboard.section.buttons.val = {
			dashboard.button("Spc f n", "   New file"),
			dashboard.button("Spc f f", "󰮗   Find file"),
			dashboard.button("Spc f r", "   Recent Files"),
			dashboard.button("Spc f g", "󱘞   Ripgrep"),
			dashboard.button("Spc f p", "   Configuration"),
			dashboard.button("Spc o p", "   File Explorer"),
			dashboard.button("Spc q q", "󰗼   Quit", ":qa<CR>"),
		}

		local function centerText(text, width)
			local totalPadding = width - #text
			local leftPadding = math.floor(totalPadding / 2)
			local rightPadding = totalPadding - leftPadding
			return string.rep(" ", leftPadding) .. text .. string.rep(" ", rightPadding)
		end

		-- Send config to alpha
		alpha.setup(dashboard.opts)
	end,
}
