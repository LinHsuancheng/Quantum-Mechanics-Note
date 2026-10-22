# 作业整理规范

## 1. 文件命名规范

第 `k` 此作业应该放在 `hw0k` 文件夹中，文件命名应遵循以下规则：

- `hw0k.typ` 放置作业代码文件，按照 typst 格式整理
- `my_hw0k.pdf` 作为作业 PDF 格式，从 typst 文件生成


## 2.作业手稿整理规范

- 模板位于 [作业模板](.codex/typst_template.typ) 中
- 标题命名为 `Quantum Mechanics Chapter k` 
- 作者名字为 `Lin Hsuancheng` 

## 3.公式规范

- 所有公式使用 `$$` 或者 `$  $`包裹
- 对于较长的公式，使用单行公式`$ <expression> $`，注意两边的空格
- 对于较短的公式，使用行内公式`$<expression>$`，注意两边没有空格
- 所有的数字，符号均应该以公式方式显示，不允许裸露的数字或符号
- 对于多行推导，使用用 & 标记对齐位置，\\ 换行，并使用居中单行公式，如下所示。
```typst
$
  (Delta L_x)^2 &= angle.l L_x^2 angle.r \
                 &= 1/2 (angle.l L^2 angle.r - angle.l L_z^2 angle.r) \
                 &= frac(hbar^2, 2) (l(l+1) - m^2)
$
```
- 使用简短的语言描述公式推导过程，例如“得到”“从而”“于是” 等方式，不允许使用长描述。
- 符号规范
  - 所有希腊字母使用希腊字母形式，例如 $alpha$ 而不是使用 unicode
  - 约化普朗克常数使用 $plunck$ 

## 4.作业示例

[实例](hw01/hw01.typ)