#set page(
  paper: "a4",
  margin: (x: 23mm, y: 20mm),
  header: context if counter(page).get().first() > 1 {
    align(right, text(size: 8.5pt, fill: gray)[Quantum Mechanics · Chapter 4])
  },
  footer: context align(center, text(size: 8.5pt, fill: gray)[#counter(page).display()]),
)
#set text(font: "Noto Sans CJK SC", size: 10.5pt, lang: "zh")
#set par(leading: 0.72em)
#show heading.where(level: 1): it => block(above: 1.2em, below: 0.7em)[
  #set text(size: 15pt, weight: "bold")
  #it.body
]
#show heading.where(level: 2): it => block(above: 0.9em, below: 0.45em)[
  #set text(size: 11pt, weight: "bold")
  #it.body
]
#show math.equation: set block(above: 0.48em, below: 0.48em)

#align(center)[#text(size: 19pt, weight: "bold")[Quantum Mechanics Chapter 4]]

#align(center)[Lin Hsuancheng]

= Problem 1

我们已经知道

$ i ħ d/(d t) ⟨A⟩ = ⟨[A, H]⟩ "    (*)" $

则

$
  -ħ^2 d^2/(d t^2) ⟨A⟩ & = i ħ d/(d t) (i ħ d/(d t) ⟨A⟩) \
                       & = i ħ d/(d t) (⟨[A, H]⟩)
$

将 $(*)$ 式中的 $A$ 换为 $[A, H]$，显然 $[A, H]$ 不显含时

$ = ⟨[[A, H], H]⟩ $

就证明了第二等式。


= Problem 2

有

$
  hat(D)_x(a) psi(x)
  := e^(-a partial_x) psi(x)
  = sum 1/(k!) partial_x^k psi(x) (-a)^k
  = psi(x - a).
$

对于解析的 $psi$ 成立。

将 $psi$ 换为 Bloch 函数 $e^(i k x) phi_k(x)$，

则

$
  hat(D)_x(a) (e^(i k x) phi_k(x)) & = e^(i k (x - a)) phi_k(x - a)
$

由

$ phi_k(x - a) = phi_k(x), $

$
  & = e^(-i k a) e^(i k x) phi_k(x) \
  & = e^(-i k a) psi(x).
$

因此 $hat(D)_x(a)$ 的本征函数是 $psi(x)$，本征值 $e^(-i k a)$。


= Problem 3

== (1)

$
  Phi = phi_i phi_j phi_k,
  quad i, j, k = 1, 2, 3.
$

如 $phi_1 phi_1 phi_1$，$phi_1 phi_2 phi_3$，$phi_1 phi_1 phi_2$
都是可行的态，共 $3^3 = 27$ 种态。


== (2)
对于 $phi_i times.o phi_j times.o phi_k$ 对应的玻色子波函数为
$
  Phi
  = op("Sym") phi_i phi_j phi_k
  = sqrt(n_1 ! n_2 ! n_3 !)/sqrt(|S_3|)
  sum_(sigma in S_3)
  phi_(sigma(i)) phi_(sigma(j)) phi_(sigma(k)).
$

其中 $n_1$,$n_2$,$n_3$ 为处在 $phi_1$,$phi_2$,$phi_3$ 的粒子个数

下面计算合法波函数的个数

系统的状态只依赖处在
$phi_1, phi_2, phi_3$ 中粒子的个数。

求系统状态个数等价于计算

$ n_1 + n_2 + n_3 = 3 $

的合法非负整数解个数，共

$ binom(3 + 3 - 1, 3) = 10 $

个。

== (3)

$
  Phi
  = "Asy" phi_i phi_j phi_k
  = 1/sqrt(|S_3|)
  sum_(sigma in S_3)
  phi_(sigma(i)) phi_(sigma(j)) phi_(sigma(k))
  "sgn"(sigma).
$

其中

$
  "sgn"(sigma) =
  cases(
    1 "    偶置换",
    -1 "    奇置换",
  )
$

由于 $Phi$ 是反对称的，因此若指标重复，$Phi = 0$，
要求 $i, j, k$ 各不相同。

只有一个态

$ "Asy"(phi_1 ⊗ phi_2 ⊗ phi_3). $


= Problem 4

记 $s_i := phi_(i s)$，即第 $i$ 个粒子正处于 $s$ 态，给定的系统变换为 $U ⊗ U$。

其中

$
  U phi_a = 1/sqrt(2) (phi_c + phi_d),
  quad
  U phi_b = 1/sqrt(2) (phi_c - phi_d).
$


== (1)

$
  psi & = U ⊗ U (a_1 ⊗ b_2) \
      & = 1/sqrt(2) (c_1 + d_1)
        dot
        1/sqrt(2) (c_2 - d_2) \
      & = 1/2 c_1 c_2
        - 1/2 c_1 d_2
        + 1/2 d_1 c_2
        - 1/2 d_1 d_2.
$

同一出口的概率为

$ (1/2)^2 + (1/2)^2 = 1/2. $

== (2)

$
  psi & = U ⊗ U (
          1/sqrt(2) a_1 ⊗ b_2
          + 1/sqrt(2) a_2 ⊗ b_1
        ) \
      & = 1/(2 sqrt(2))
        (c_1 c_2 - c_1 d_2 + d_1 c_2 - d_1 d_2) \
      & quad
        + 1/(2 sqrt(2))
        (c_1 c_2 - c_2 d_1 + d_2 c_1 - d_1 d_2) \
      & = 1/sqrt(2) (c_1 c_2 - d_1 d_2).
$

同一出口概率为 $1$。

== (3)

$
  psi & = U ⊗ U (
          1/sqrt(2) a_1 ⊗ b_2
          - 1/sqrt(2) a_2 ⊗ b_1
        ) \
      & = 1/sqrt(2) (d_1 c_2 - c_1 d_2).
$

同一出口概率为 $0$。
