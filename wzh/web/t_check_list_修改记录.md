# t_check_list.aspx 修改记录

## 修改的文件

| 文件 | 修改内容 |
|------|----------|
| `t_check_list.aspx` | 内联样式替换、控件位置调整、标题清空 |
| `t_check_list.aspx.css` | 全部新增样式（按钮/面板/表格/布局） |

---

## 1. 左上角部品选择面板（.top-left-panel）

**位置**：覆盖在标题栏左上角（`top: 8px; left: 10px`）

**样式**：
- 半透明白色背景 + 毛玻璃效果（`backdrop-filter: blur(4px)`）
- 圆角卡片 + 阴影
- 链接"查看生产性"：18px 粗体深蓝色
- CheckBox 放大到 22×22px，青色主题色
- 各部件使用 flex 水平排列

**HTML 变更**：
- 移除了原内联 `style="position: absolute; z-index: 100000; top: 10px; left: 10px;"`
- 改为 `<div class="top-left-panel">`

## 2. lblGT 移到 4部 右侧

- 在 `top-left-panel` 内 4部 CheckBox 后面追加 `<asp:Label ID="lblGT">`
- 删除第二行（`top_button_panel`）末尾重复的 `lblGT`

## 3. UserHeader 标题清空

- `title="检查一览"` → `title=""`
- 页面标题栏文字不再显示，由左上角面板代替

---

## 4. 按钮样式（.top_btn / .top_btn_small）

| 状态 | 样式 |
|------|------|
| 正常 | 白底、左边蓝色 4px 条、圆角 8px、边框 #bbb |
| Hover | 浅蓝背景、蓝色边框、阴影增强 |
| 禁用 | 灰底灰字、左边灰色条、不可点击、半透明 |

**高度统一**：所有按钮高度 60px，`line-height: 58px` 垂直居中。

**小按钮（生产实际/不良一览）**：`.top_btn_small`，左边灰色条、字体 14px、宽度缩小。

---

## 5. 输入框/下拉框（.top_tb）

- 高度统一 `60px !important`
- 圆角 8px、边框 #bbb
- tbxCd / tbxNo 添加内联 `style="height:60px !important"` 强制覆盖 Main.css

---

## 6. 三排控件布局（align 对齐）

**尝试方案（已回退）**：
- 合并为单个 `<table class="top_table">` 用 table 实现严格对齐
- 因 git checkout 恢复，当前文件为原始 flex 布局

---

## 7. gvtitle 表头美化

- 背景：淡绿色渐变 `#e8f5e9 → #c8e6c9`
- 文字：深绿色 `#2e7d32`
- 边框：浅绿色 `#c8e6c9`
- 统一使用 `border-collapse: collapse` 与下方 GridView 列宽对齐
- 字体：13px、粗体、居中

## 8. 数据行字体统一（.gv td）

- 字体大小统一为 `13px`
- 字体系列：`"Segoe UI", "微软雅黑", "Meiryo", sans-serif`

---

## 9. 隐藏"防漏检 系统"

`t_check_list.aspx.css` 末尾添加：
```css
header > div:first-child::before {
    content: none !important;
}
```

