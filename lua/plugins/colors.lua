function ColorMyPencils(theme, transparent, color)
    color = color or "gruvbox";
    vim.o.background = theme;
    vim.cmd.colorscheme(color);

    if transparent then
        vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
        vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    end
end

return {
    "sainnhe/gruvbox-material",
    config = function()
        ColorMyPencils("dark", false, "gruvbox-material");
    end,
}
