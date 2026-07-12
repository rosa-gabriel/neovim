return {
	"williamboman/mason.nvim",
	dependencies = {
		"hrsh7th/nvim-cmp",
		"williamboman/mason-lspconfig.nvim",
		"hrsh7th/cmp-nvim-lsp",
		"L3MON4D3/LuaSnip",
		"j-hui/fidget.nvim",
        "neovim/nvim-lspconfig"
	},
	config = function()
		require("fidget").setup({})
		require("mason").setup({
            fetch_registry_timeout = 1200000,
            registries = {
                "github:mason-org/mason-registry",
                "github:Crashdummyy/mason-registry",
            },
        })

        local programming = false

        local install = { "lua_ls", "stylua" }

        if programming then
            install = { "lua_ls", "gopls", "rust_analyzer", "ruff", "stylua", "ts_ls", "pyright", "jdtls" }
        end

		require("mason-lspconfig").setup({
			ensure_installed = install,
			automatic_installation = true,
		})
	end,
}
