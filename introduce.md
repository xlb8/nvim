# 当前快捷键梳理

## 约定与基础
- `leader` = `Space`，`localleader` = `,`。
- 插入模式：`<C-u>` 调用自定义补全括号函数（覆盖原本删除到行首）；CMP 内部常用 `<C-o>` 触发补全，`<C-e>/<C-n>` 跳转片段占位，`<C-f>` 关闭弹窗并回退，`<CR>` 仅在有选中项时确认。
- 终端模式：`<C-n>` 回到 Normal，`<C-o>` 进入 Normal 再执行一次命令。
- 插件管理：`<leader>pl` 打开 Lazy。
- 命令面板：`<C-q>` 打开 commander 列表。
- 通知：`,;` 查看通知历史（Telescope），`<leader>c;` 清除通知。

## 窗口 / 视图 / 状态
- **NeoZoom**：`<leader>f` 切换放大窗口（与 LSP 格式化同键，见下方冲突）。
- **Dropbar 面包屑**：`<leader>;` 选择节点；`[c` / `]c` 在上下文间移动；菜单内 `<CR>/i` 确认，`<esc>/q/n` 关闭。
- **Undotree**：`L` 切换面板；面板内 `u/e` 前后状态，`U/E` 跳 5 步。
- **Colorful-winsep**：无额外键位，自动美化分隔。
- **Notify**：同“通知”部分。

## 搜索 / 跳转 / 替换
- **Telescope**：
  - `0` 模式：`<C-r>` 文件，`<C-w>` 缓冲区，`<C-h>` 最近文件，`<C-_>` 当前缓冲模糊查找，`z=` 拼写建议，`<leader>d` 按严重度列出诊断，`<leader>rs` 恢复上次搜索，`gi` Git status，`gp` 命令列表。
  - 插件 `telescope-tabs`：`<C-f>` 列出 tabs（与 FZF 冲突）。
  - Telescope 输入中：`<C-h>` which-key，`<C-u>/<C-e>` 上下选项，`<C-l>/<C-y>` 预览上下滚动，`<esc>` 关闭，`<C-n>/<C-p>` 历史切换。
- **FZF-Lua**：
  - Normal `<C-f>` 空字符串全局 grep；Visual `<C-f>` 以选区为搜索词。
  - FZF 窗口内：`<C-f>` 全屏，`<C-r>` wrap 预览，`<C-p>` 切预览，`<C-y>/<C-l>` 预览翻页，`<C-e>/<C-u>` 结果上下，`Alt-a` 全选，`Esc` 退出。
- **Flash.nvim**：`tt`（n/o/x）按 Treesitter 匹配跳转；`/`（o/x）闪跳搜索（覆盖原本 `/` 搜索）。
- **nvim-hlslens**：`=` 下一处搜索结果、`-` 上一处；`*/#/g*/g#` 同步高亮。
- **AnyJump**：Normal `y` 跳到定义，Visual `y` 区域跳转（覆盖默认 yank）。
- **GrugFar**：`<leader>F` 打开全局查找替换。

## LSP / 诊断
- 定位与辅助：`<leader>h` hover，`gd/gD` 定义（gD 打开新 Tab），`gi` 实现，`go` 类型定义，`gr` 引用，插入 `<C-f>` 签名帮助。
- 代码操作：`<leader>rn` 重命名，`<leader>aw` 或 `<leader>,` code action。
- 诊断：`<leader>-` 上一条，`<leader>=` 下一条，`<leader>t` 打开 Trouble。
- 格式化：`<leader>f` 触发 LSP format（与 NeoZoom 冲突）。
- Trouble 窗口：`<esc>` 关闭，`u/e` 上下条。

## Git
- **Gitsigns**：`<leader>g-`/`<leader>g=` 上/下 hunk，`<leader>gb` 当前行 blame，`<leader>gr` 重置 hunk，`H` 预览 hunk（覆盖原本跳至窗口顶部）。
- **LazyGit**：`<C-g>` 浮窗打开。

## 调试 (nvim-dap)
- 断点与控制：`<leader>'t` 切换断点；`<leader>'n` 编译后继续；`<leader>'s` 单步；`<leader>'q` 终止。
- UI：`<leader>'v` 悬停变量；`<leader>'u` 切换 dap-ui。

## 编辑增强
- **move.nvim**：Normal `<C-y>/<C-l>` 行下/上移；Visual `<C-e>/<C-u>` 选区下/上移（覆盖滚动）。
- **substitute.nvim**：`s<motion>` 用寄存器替换；`sh` 以到单词结尾为范围；`ss` 整行替换；`sI` 替换到行尾；Visual `s` 区域替换（覆盖原生 `s`）。
- **bullets.vim / autopairs / colorizer / ufo**：无自定义键位，自动生效。

## Treesitter
- 增量选择：`<C-n>` 初始化/扩大，`<C-h>` 收缩，`<C-l>` 扩大到作用域。
- Treesitter Context：`[c` 跳到上方上下文行（与 Dropbar 同键）。

## 剪贴板 / 历史
- **Neoclip**：`<leader>y` 打开剪贴板历史（Telescope 视图）。Telescope 内：`<C-y>` 选中条目，`<CR>` 粘贴，`<C-g>` 向后粘贴，`<C-d>` 删除记录，`<C-k>` 编辑，`<C-q>` 重放宏。

## 文件 / 终端工具
- **Yazi 文件管理器**：`R` 在当前文件路径打开浮窗；Yazi 内：`<F1>` 帮助，`<C-v>/<C-x>/<C-t>` 垂直/水平/标签页打开，`<C-f>` 目录内 grep，`<C-r>` 目录内替换，`<Tab>` 切缓冲区，`<C-y>` 复制相对路径，`<C-q>` 发送 quickfix。
- **Windowed LSP Breadcrumbs / 状态栏 / 颜色方案**：无额外键位。

## 多光标 (vim-visual-multi)
- 入口：`<leader>sa` 选中全部；`<C-k>` 选中下一个匹配（Find Under/Subword）。
- 移动/控制：`q` 删除当前光标，`<C-n>` 跳过匹配，`l` 撤销，`<C-r>` 重做。运动键已重映射为 Colemak 方向（`h/j/k/l` 等）。

## Git / Yank 以外的常见覆盖
- `y` 被 AnyJump 占用，如需普通 yank 可改用 `yy/yk/yiw` 等显式命令。
- `=` / `-` 不再是缩进调整，而是搜索导航。
- `H` 不再跳转窗口顶部，而是显示 hunk。
- `R` 不再进入 Replace 模式，而是打开 Yazi。

## 已知冲突与建议
- `<leader>f` 同时绑定 LSP 格式化和 NeoZoom：建议将 NeoZoom 改成 `<leader>zf` 或在无 LSP 缓冲区使用 `gq`/`:Format`。
- `<C-f>` 在 Normal 模式同时触发 FZF 全局 grep 与 Telescope Tabs，实测后加载顺序决定行为，建议保留其一（例如 Tabs 换成 `<leader>tt`）。
- `[c`/`]c` 由 Dropbar 与 Treesitter Context 共用，容易相互覆盖，可将其中一个改成 `<leader>[c` / `<leader>]c`。
- `y` 被 AnyJump 抢占会影响肌肉记忆，可考虑改为 `<leader>j` 或在 AnyJump 中设置 `g:any_jump_disable_default_keybindings = 1` 后自定义。
- 移动/滚动覆盖：Normal/Visual `<C-u>/<C-e>`、`H`、`=`、`-` 等均与 Vim 默认不同，团队使用时需说明，或加哪怕一行注释以自提醒。
- 终端/插入态 `<C-u>` 也被覆盖，如需要原生删除到行首，可为原功能另设 `<C-S-u>` 等备用键。
