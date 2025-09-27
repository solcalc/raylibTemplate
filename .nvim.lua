-- /home/masonic/projects/learning/c/.nvim.lua
vim.notify("Loaded .nvim.lua", vim.log.levels.INFO)
vim.api.nvim_create_autocmd({"BufEnter", "FileType"}, {
	pattern = { "*.cpp", "*.c", "*.h", "*.hpp", "overseer" },
	callback = function()
		vim.keymap.set("n", "<Leader>B", ":OverseerRun build<CR>", { desc = "Run build task", buffer = true })
		vim.keymap.set("n", "<Leader>R", ":!./build/raylib_project<CR>", { desc = "Run program", buffer = true })
		vim.keymap.set("n", "<Leader>C", ":OverseerClose<CR>", { desc = "Close Overseer", buffer = true })
	end,
})
