# 键位映射（Colemak 布局友好）

## 基础 / 插入
- `k`: 进入插入模式（原 `i`）；`Q`: 退出窗口；`S`: 保存。
- 规则：所有用到 `i` 的组合改用 `k`（如 `ciw`→`ckw`）。
- 插入模式：`Ctrl+a` 行尾；`Ctrl+u` 把光标右侧字符移至行尾。

## 光标与文本操作
- 移动：`u/e` 上/下行，`n/i` 左/右；`U/E` 上/下 5 行；`N/I` 行首/行尾。
- 视口滚动：`Ctrl+u` 向上 5 行；`Ctrl+e` 向下 5 行。
- 词移动：`h` 词尾；`W/B` 向前/后 5 个单词。
- 撤销缩进：`l` 撤销；`<` 反缩进；`>` 缩进。
- 占位跳转：`<Space><Space>` 跳到下一个 `<++>`。
- 其他：`r` 编译/运行当前文件；`<Space>sc` 拼写建议切换；`<Space>dw` 查找相邻重复词；`<Space>tt` 4 空格→Tab；`<Space>o` 折叠；`<Space>-`/`<Space>+` 上/下一个 quickfix；`\\p` 显示当前文件路径；`<Space>/` 打开下方终端。
- 可视模式：`Y` 复制到系统剪贴板。

## 窗口 / 标签 / 终端
- 分屏：`s u/e` 上/下水平分屏；`s n/i` 左/右垂直分屏；`s v/h` 设为竖/横；`s r v/h` 旋转布局为竖/横。
- 窗口跳转：`<Space>w` 下一个；`<Space>n/i/u/e` 左/右/上/下。
- 调整大小：方向键。
- 关闭：`Q` 当前；`<Space>q` 关闭下方窗口（无则关闭当前）。
- 标签：`t u` 新建；`t n/i` 左/右切换；`t m n/i` 左/右移动标签。
- 终端：`Ctrl+n` 退出终端输入模式。

## 特殊功能
- Figlet 文本：`t x` 输入文本后生成 ASCII 艺术。
- 定制纵向跳转：`[` + `arstdhneio` 组合 + `Space` 上跳；`'` + 组合 + `Space` 下跳（最多 199 行，对应 1~0）。

## Markdown 片段（UltiSnips）
- `,n` 分隔线；`,b` 粗体；`,s` 删除线；`,i` 斜体；`,d` 行内代码；`,c` 代码块；`,m` 复选框；`,p` 图片；`,a` 链接；`,1`~`,4` 各级标题；`,l` 水平线。
- `,f` 跳到下一个 `<++>`；`,w` 跳到 `<++>` 并回车。

# 插件与快捷键简表
- **coc.nvim**（LSP 补全/跳转）：`gd/gr/gi/gy` 跳转；`<Space>rn` 重命名；`<Space>y` Yank 历史。
- **coc-snippets**（片段引擎）：`Ctrl+e` 展开或下一个占位；`Ctrl+n` 上一个占位。
- **coc-explorer**（文件树）：`tt` 打开；`?` 查看帮助。
- **rnvimr**（Ranger 文件管理器，需要 ranger）：`R` 打开；`Ctrl+t/x/v` 新标签/上下分屏/左右分屏打开文件。
- **fzf.vim**（模糊搜索）：`Ctrl+p` 文件；`Ctrl+w` 缓冲区；`Ctrl+f` 文件内容；`Ctrl+h` 最近文件；`Ctrl+t` Tags；`Ctrl+u/e` 上/下移列表。
- **vim-xtabline**（标签栏增强）：`to` 切换标签模式；`\\p` 显示路径。
- **vim-table-mode**（表格编辑）：`<Space>tm` 切换；`<Space>tr` 对齐。
- **undotree**（撤销树）：`Shift+L` 打开；`u/e` 新/旧版本。
- **vim-visual-multi**（多光标）：`Ctrl+k` 选下一个；`-`/`=` 选上/下；`q` 取消当前；`Esc` 退出。
- **vim-surround**（包围/替换）：`ys` 添加包围，`cs` 更换，常用于引号/括号。
- **vim-subversive**（替换操作符）：`s<motion>` 用寄存器内容替换目标文本（如 `skw` 替换单词）。
- **vim-easy-align**（对齐）：`ga` + 分隔符 按符号对齐。
- **vim-autoformat**（格式化）：`\\f` 格式化代码。
- **vim-markdown-toc**（Markdown 目录）：`:Gen...` 生成目录。
- **vista.vim**（符号大纲）：`T` 切换函数/变量列表。
- **far.vim**（查找替换）：`<Space>fr` 在 cwd 搜索替换。
- **flash.nvim**（Leap 风格跳转）：`tt`（normal/visual/operator）Treesitter 范围跳转；`/`（visual/operator）闪跳搜索，标签字母遵循 Colemak 序列。
- **vim-gitgutter**（Git diff 行标记）：`H` 显示当前行 hunk；`<Space>g-`/`<Space>g+` 上/下个 hunk；`<Space>gf` 折叠非 hunk。
- **fzf-gitignore**（生成 .gitignore）：`<Space>gi` 创建 `.gitignore`。
- **calendar.vim**（日历/时钟）：`\\\\` 时钟；`\\c` 日历。
- **goyo.vim**（专注模式）：`g y` 进入/退出沉浸模式。
- **suda.vim**（提权写入）：`:sudowrite` 或 `:sw`。
- **coc-translator**（翻译）：`t s` 翻译光标下单词。
