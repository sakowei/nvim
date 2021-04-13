# 我的 [Neovim](https://www.neovim.io) 用户配置文件

````
    ___  ___ _____           _       ___  _____
   / _ \|_  / ___/ ___ _  __(_)_ _  / _ \/ ___/
  / , _/ __/ /__  / _ \ |/ / /  ' \/ , _/ /__
 /_/|_/____|___/ /_//_/___/_/_/_/_/_/|_|\___/
````

## 前期工作  
安装 node.js, yarn, python3, clangd, git  
安装 neovim (`D:\neovim`) 或者 `apt-get install neovim`  

下载配置：`git clone https://www.github.com/weirick/nvim.git ~/.config` 

默认配置生效的位置：
`C:\users\you\AppData\Local\nvim`  on Windows
`~/.config/nvim` on Linux



## 快捷键
* NORMAL 模式下  

|快捷键|含义|
|:---------:|:---------:|
|Ctrl+C / V |复制粘贴|
|Ctrl+S     |保存（等于 :w）|
|Ctrl+Q     |强制退出（等于 :qa）|
|Ctrl+B     |显示/隐藏 NerdTree|
|i          |当前光标插入|
|o          |向下插入新行|
|coc 补全模式下||
|TAB|选择补全片断|
|Enter|选择片断|

## 安装插件
`:PlugInstall`

## Windows 用户环境变量
`D:\MingW64\bin;D:\Git\bin;D:\nodejs\npm;D:\Neovim\bin;D:\Python3;D:\yarn\bin;D:\clangd\bin;`

## 配置后的编辑器特性（节选） 
  - 缩进=2个空格  
  - UTF-8编码  
  - LF行尾  
  - 可以使用 `.editorconfig` 设置具体语言规范

## Coc.nvim 补全
  - 支持语言：C,  C++, Java, HTML, css, XML, json, sql
