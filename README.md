**_Aunnno自用nvim配置_** 
#### 使用方法 
克隆到你本地的文件夹中，然后把配置文件复制到.config/nvim文件夹(init.lua)   
你需要复制的文件/文件夹：  
1.`init.lua`   
2.`lua`  
**Linux 和 Windows 的相关文件目录可能有所不同，请自行查阅资料**
#### 一些信息
- 设备:respberry pi 4b
- 系统:ubuntu 22.04
- nvim版本:0.12
#### 插件
---
- * 插件管理器:Lazy.nvim
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
#### 自定义按键
我设置的主按键是空格
- INSECT 
`<ESC> -> jk`  退出 NORMAL 模式
- NORMAL
`<C-w>v -> <leader>sv`  水平打开新窗口
`<C-w>s -> <leader>sh`  竖直打开新窗口
`:w -> <leader>w`  保存该文件
`:q -> <leader>q`  退出该文件
`:nohl -> <leader>nh`  取消高亮
- nvim-tree
`:NvimTreeToggle -> <leader>e`  打开/关闭文件树
`:NvimTreeFocus -> <leader>t`  转到文件树
- buffer
`:bnext -> <leader>l`  向右切换窗口
`:bprevious -> <leader>h`  向左切换窗口
