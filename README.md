**_Aunnno自用nvim配置_** 
#### 使用方法 
克隆到你本地的文件夹中，然后把配置文件复制到.config/nvim文件夹(init.lua) 
你需要复制的文件/文件夹： 
1.`init.lua` 
2.`lua`
**Linux 和 Windows 的相关文件目录可能有所不同，请自行查阅资料**
#### Some imformation 
- Device:respberry pi 4b
- Sysytem:ubuntu 22.04
- nvim version:0.10
#### The plugins 
---
- * Plugins manager:Lazy.nvim
---
- `"folke/tokyonight.nvim"`  "Tokyo night"主题
- `"nvim-tree/nvim-tree.lua"`  文档树
- `"nvim-treesitter/nvim-treesitter"`  语法高亮
- `"nvim-lualine/lualine.nvim"`   状态栏
- `"nvim-tree/nvim-web-devicons"`  文档树图标
- `"akinsho/bufferline.nvim"`  buffer分割线
- `"lewis6991/gitsigns.nvim"`  左则git提示
- `"p00f/nvim-ts-rainbow"`  配合treesitter，不同括号颜色区分
- `"numToStr/Comment.nvim"`  gcc和gc注释
- `"windwp/nvim-autopairs"`  自动补全括号
- `"Pocco81/auto-save.nvim"`  Auto-save 
#### The keymaps
- INSECT 
`<ESC> -> jk`  
- NORMAL
`<C-w>v -> <leader>sv`
`<C-w>s -> <leader>sh`
`:w -> <leader>w`
`:q -> <leader>q`
`:nohl -> <leader>nh`
- nvim-tree
`:NvimTreeToggle -> <leader>e`
`:NvimTreeFocus -> <leader>t`
- buffer
`:bnext -> <leader>l`
`:bprevious -> <leader>h`
