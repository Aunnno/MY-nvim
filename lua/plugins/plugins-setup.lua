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
	"nvim-lualine/lualine.nvim",  -- 状态栏
	"nvim-treesitter/nvim-treesitter", -- 语法高亮
	"nvim-tree/nvim-tree.lua",  -- 文档树
	"nvim-tree/nvim-web-devicons", -- 文档树图标
	"akinsho/bufferline.nvim", -- buffer分割线
	"lewis6991/gitsigns.nvim", -- 左则git提示
	"p00f/nvim-ts-rainbow", -- 配合treesitter，不同括号颜色区分
	"numToStr/Comment.nvim", -- gcc和gc注释
	"christoomey/vim-tmux-navigator", -- 用ctl-hjkl来定位窗口
	"windwp/nvim-autopairs", -- 自动补全括号
	"Pocco81/auto-save.nvim",
	{
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    ---@module "ibl"
    ---@type ibl.config
    opts = {},
	}
}
local opts = {} -- 注意要定义这个变量

require("lazy").setup(plugins, opts)
