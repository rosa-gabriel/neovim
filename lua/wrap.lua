local group = vim.api.nvim_create_augroup("FileTypeSettings", { clear = true })

vim.api.nvim_create_autocmd("FileType", {
	pattern = { "markdown", "text", "tex" },
	group = group,
	callback = function()
		vim.opt_local.wrap = true
		vim.opt_local.linebreak = true
		vim.opt_local.breakindent = true
        vim.opt_local.conceallevel = 2
        vim.opt_local.colorcolumn = "0"
        vim.cmd("NoNeckPain")
	end,
})
