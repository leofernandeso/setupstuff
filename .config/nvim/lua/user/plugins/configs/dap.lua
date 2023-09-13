local dap, dapui = require("dap"), require("dapui")

-- events for interacting with the ui
dap.listeners.after.event_initialized["dapui_config"] = function()
	dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
	dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
	dapui.close()
end

dap.adapters = {
	python = {
		type = "executable",
		command = "python3",
		args = { "-m", "debugpy.adapter" },
	},
	cpp = {
		type = "executable",
    command = "/home/fidelinus/.local/share/nvim/mason/bin/codelldb",
		name = "lldb",
	},
}

dap.configurations = {
	python = {
		{
			type = "python",
			request = "launch",
			name = "Launch file",
			program = "${file}",
			pythonPath = function()
				return "python3"
			end,
		},
	},
	cpp = {
		{
			type = "cpp",
			request = "launch",
			name = "Launch C++ program",
			program = function()
				return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/test", "file")
			end,
			cwd = vim.fn.getcwd(),
			stopOnEntry = false,
			args = {},
			runInTerminal = false,
		},
	},
}

-- icon and highlight for breakpoint
vim.api.nvim_set_hl(0, "DapBreakpoint", { ctermbg = 0, bg = "#993939" })
vim.fn.sign_define("DapBreakpoint", { text = "🛑", texthl = "", linehl = "DapBreakpoint", numhl = "DapBreakpoint" })
