local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)


local plugins = {
	{
    "folke/tokyonight.nvim",
    lazy = false, -- 确保插件立即加载
    priority = 1000, -- 设置高优先级，确保在其他插件之前加载
    config = function()
        vim.cmd([[colorscheme tokyonight-moon]])
    end,
	},
	"nvim-tree/nvim-tree.lua",  -- 文档树
	"nvim-treesitter/nvim-treesitter", -- 语法高亮
	"nvim-lualine/lualine.nvim",  -- 状态栏
	"nvim-tree/nvim-web-devicons",
	"akinsho/bufferline.nvim", -- buffer分割线
    "lewis6991/gitsigns.nvim", -- 左则git提示
	"p00f/nvim-ts-rainbow", -- 配合treesitter，不同括号颜色区分
-- {
--    "williamboman/mason.nvim",
--    "williamboman/mason-lspconfig.nvim", -- 这个相当于mason.nvim和lspconfig的桥梁
--    "neovim/nvim-lspconfig"
--   },

	     -- 自动补全  已移除，开发板上会崩溃，疑似爆内存
--    "hrsh7th/nvim-cmp",
--    "hrsh7th/cmp-nvim-lsp",
--    "L3MON4D3/LuaSnip", -- snippets引擎，不装这个自动补全会出问题
--    "saadparwaiz1/cmp_luasnip",
--    "rafamadriz/friendly-snippets",
--    "hrsh7th/cmp-path", -- 文件路径
    "numToStr/Comment.nvim", -- gcc和gc注释
    "windwp/nvim-autopairs", -- 自动补全括号
-- 	{
-- 	"iamcco/markdown-preview.nvim",
--   	cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
--   	build = "cd app && yarn install",
--   	init = function()
--     vim.g.mkdp_filetypes = { "markdown" }
--   end,
--   	ft = { "markdown" },
-- },
	"Pocco81/auto-save.nvim",
	{
    "toppair/peek.nvim",
    event = { "VeryLazy" },
    build = "deno task --quiet build:fast",
    config = function()
        require("peek").setup()
        vim.api.nvim_create_user_command("PeekOpen", require("peek").open, {})
        vim.api.nvim_create_user_command("PeekClose", require("peek").close, {})
    end,
	}
}
local opts = {} -- 注意要定义这个变量

require("lazy").setup(plugins, opts)
