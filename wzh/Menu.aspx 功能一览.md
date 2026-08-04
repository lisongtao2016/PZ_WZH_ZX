# Menu.aspx 功能一览

> 主菜单页面，分为左右两栏，共 **6 个功能区**。每个按钮旁有 **NEW 徽标**（青色方块）用于快捷打开对应数据表/视图维护工具（跳转 DBTableKanri），盘点/一览类按钮则支持按当天日期过滤。

---

## 左栏（col-left）

### ① MS登录（基础数据维护）

| 功能 | 按钮控件 | 页面跳转 | NEW 快捷入口（数据表/工具） |
|------|----------|----------|------------------------------|
| 用户登録画面 | btnUserIns | MsUser.aspx | m_user |
| 生产线Ms | btnMsLine | MsLine.aspx | m_line |
| 治具Ms | btnMsTools | MsTools.aspx | m_tools |
| 商品名Ms | btnGoodsName | MsSyouhin.aspx | m_goods_tmp |
| 目标时间Ms | btnMubiao | MsMubiaoTime.aspx | m_mubiao_time |
| 全数检查MS | btnQuanshu | TB_SetAllCheck.aspx | TB_SetAllCheck |
| 初检的CDs | btnFirstChk | m_first_chk_cds.aspx | m_first_chk_cds |
| **三方昭和（相同CD）** | | | |
| ├ 相同CD EXCEL | —（链接） | APP/相同CD导入新系统.xlsm | — |
| └ 相同CD WEB | btnSame | MSt_first_check.aspx | t_first_check |

### ② 模版登录

| 功能 | 按钮控件 | 页面跳转 | NEW 快捷入口 |
|------|----------|----------|--------------|
| 检查项目登录 | btntemplate | MsKmTemplate.aspx | m_km_template |
| 商品与体系关联 | btnCdSysJoin | MsSysJoin.aspx | m_sys_join |
| 仕様と分類関連 | btnTmpAndLevelJoin | （隐藏 Visible=False） | — |

### ③ 结果修正

| 功能 | 按钮控件 | 页面跳转 | NEW 快捷入口 |
|------|----------|----------|--------------|
| 检查结果修正 | Button1 | t_check_editor.aspx | t_check |
| 不良替代 | —（input 按钮） | 打开 BuLiang/SpreadSheetMs管理.html | — |

---

## 右栏（col-right）

### ④ 检查

| 功能 | 按钮控件 | 页面跳转 |
|------|----------|----------|
| 检查一览 | btnChkMs | t_check_list.aspx |

### ⑤ 帐票

| 功能 | 按钮控件 | 页面跳转 | NEW 快捷入口（视图） | 过滤条件 |
|------|----------|----------|----------------------|----------|
| 出力账票前，先执行（计划导入） | btnMakePlan | 导入近15天 T_BianPlan → m_plan_no_sign | — | — |
| 【检查结果明细表】 | btnChkResultList | pt_v_A01_check_result.aspx | v_A01_result_list_2026 | 检查日期 = 今天 |
| 【检查明细表】 | btnChkResultListMS | pt_v_A02_check_result_ms.aspx | v_A02_check_result_ms_2026 | 检查日期MD = 今天 |
| 【未检查一览】 | btnMiCheckList | pt_v_A03_mi_check_result.aspx | v_A03_mi_check_result_2026 | 生成实际日MD = 今天 |
| 【检查结果修正表】 | btnChkResultListEdit | pt_v_A04_check_result.aspx | v_A04_result_list_2026 | 生成实际日 = 今天 |
| 【生产性表】 | btnSCX | pt_v_A05_check_scx.aspx | v_A05_check_scx_one | 检查日期 = 今天 |

### ⑥ 其他（隐藏/返回）

| 功能 | 按钮控件 | 状态 |
|------|----------|------|
| (2.生产完➡3.待检) | btn23 | 隐藏 Visible=False |
| (3.待检➡4.检查完了) | btn34 | 隐藏 Visible=False |
| 托盘一览 | btnTpList | 隐藏 Visible=False |
| **返回** | btnBack | 返回登录页 |

---

## NEW 徽标说明

- **`login('表名')`**：打开 DBTableKanri 的 `TableMaint.aspx` 表维护工具（全屏 iframe 内打开）
- **`loginView('视图名')`**：打开 DBTableKanri 的 `ViewDisplay.aspx` 视图查看工具（全屏 iframe 内打开）
  - 指定视图 A01/A02/A03/A04/A05 时，自动附加 **当天日期** 作为过滤条件