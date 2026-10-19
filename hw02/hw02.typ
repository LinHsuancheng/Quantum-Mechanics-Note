#set page(
  paper: "a4",
  margin: (x: 23mm, y: 20mm),
  header: context if counter(page).get().first() > 1 {
    align(right, text(size: 8.5pt, fill: gray)[Quantum Mechanics · Chapter 2])
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

#align(center)[#text(size: 19pt, weight: "bold")[Quantum Mechanics, Chapter 2]]

#align(center)[Lin Hsuancheng]

= Problem 1

== (1)

求出 Schrödinger 方程：

在 $x in (0,a) times (0,b) times (0,c)$ 区域中

$ -frac(planck^2, 2m) nabla^2 psi(bold(r))=E psi(bold(r)) $

由无限深势垒条件，其余区域 $psi(bold(r))=0$。

波函数分离 $psi(bold(r))=X(x) Y(y) Z(z)$

代入得

$
  -frac(planck^2, 2m)
  (
    (partial_(x x) X)Y Z+
    X(partial_(y y) Y)Z+
    X Y(partial_(z z) Z)
  )
  =
  E X Y Z
$

两边除以 $X Y Z$

$
  -frac(planck^2, 2m)
  (
    frac(partial_(x x) X, X)
    +
    frac(partial_(y y) Y, Y)
    +
    frac(partial_(z z) Z, Z)
  )
  =E
$

由于三项分别只含一个变量 $ -frac(planck^2, 2m)frac(partial_(x x) X, X)=E_x $ $ -frac(planck^2, 2m)frac(partial_(y y) Y, Y)=E_y $ $ -frac(planck^2, 2m)frac(partial_(z z) Z, Z)=E_z $

三方程都有一维无限深势阱解 $ X(x)=sqrt(frac(2, a)) sin(frac(n_x pi x, a)) $ $ Y(y)=sqrt(frac(2, b)) sin(frac(n_y pi y, b)) $ $ Z(z)=sqrt(frac(2, c)) sin(frac(n_z pi z, c)) $

其中 $n_x,n_y,n_z=1,2,3,dots.c$

由上式得到 $E_x=frac(n_x^2pi^2planck^2, 2 m a^2)$ $E_y=frac(n_y^2pi^2planck^2, 2m b^2)$ $E_z=frac(n_z^2pi^2planck^2, 2m c^2)$

由能量叠加 $E=E_x+E_y+E_z$

即

$
  E=
  frac(pi^2planck^2, 2m)
  (
    frac(n_x^2, a^2)
    +
    frac(n_y^2, b^2)
    +
    frac(n_z^2, c^2)
  )
$

对应本征波函数

$
  psi(bold(r))
  =
  sqrt(frac(8, a b c))
  sin(frac(n_x pi x, a))
  sin(frac(n_y pi y, b))
  sin(frac(n_z pi z, c))
  , quad bold(r)in D
$

$ psi(bold(r))=0,quad bold(r) not in D $


== (2)

令 $a=b=c=l$ , $E_0=frac(pi^2planck^2, 2m l^2)$

有 $ frac(E, E_0)=n_x^2+n_y^2+n_z^2 $

基态 $(n_x,n_y,n_z)=(1,1,1)$，简并度为 $1$

第一激发态 $(n_x,n_y,n_z)$ 是 $(2,1,1)$ 的轮换，简并度为 $3$

第二激发态 $(n_x,n_y,n_z)$ 是 $(2,2,1)$ 的轮换，简并度为 $3$

相比一维情况不出现简并态，三维情况下能级简并度为 $1$ 或简并。


= Problem 2

== (1)

一维无限深势阱中 $ psi_n(x)=sqrt(frac(2, a)) sin(frac(n pi x, a)) $

平均位置

$
  chevron.l x chevron.r
  =
  integral_0^a
  frac(2, a) x sin^2(frac(n pi x, a)) dif x
$

得到 $chevron.l x chevron.r=frac(a, 2)$

二阶矩

$
  chevron.l x^2 chevron.r
  =
  integral_0^a
  frac(2, a) x^2
  sin^2(frac(n pi x, a)) dif x
$

得到 $ chevron.l x^2 chevron.r=frac(a^2, 3)-frac(a^2, 2n^2pi^2) $

方差 $ Delta x^2=chevron.l x^2 chevron.r-chevron.l x chevron.r^2 $

因此 $ Delta x^2=frac(a^2, 12)-frac(a^2, 2n^2pi^2) $

即 $ Delta x^2=frac(a^2, 12)(1-frac(6, n^2pi^2)) $


== (2)

当 $n arrow.r infinity$ 有 $Delta x^2=frac(a^2, 12)$

我们在经典力学中设粒子位置分布：$p(x) tilde op("Uniform")(0,a)$

有

$
  op("Var")(X)=
  integral_0^a (x-overline(x))^2p(x) dif x
$

对于 $X tilde op("Uniform")(0,a)$

得到 $op("Var")(X)=frac(a^2, 12)$

可见量子力学中 $n arrow.r infinity$ 时与经典结果相同。


= Problem 3

== (1)

在势垒左侧

$ -frac(planck^2, 2m)partial_(x x) psi+V_0psi=E psi $

得 $ psi(x)=A e^(i k_1 x)+B e^(-i k_1 x) $

其中 $k_1=sqrt(frac(2m(V_0+E), planck^2))$

在势垒右侧

$ -frac(planck^2, 2m)partial_(x x) psi=E psi $

得 $ psi(x)=C e^(i k_2 x) $

其中 $k_2=sqrt(frac(2m E, planck^2))$

考虑边界条件 $ psi(0^-)=psi(0^+) $ $ partial_x psi(0^-)=partial_x psi(0^+) $

得到
$
              A+B & = C \
  i k_1 A-i k_1 B & = i k_2 C
$

解得 $ A & = frac(k_1+k_2, 2k_1) C \
B & =frac(k_1-k_2, 2k_1) C $


采用归一化 $ j_i=abs(A)^2 frac(planck k_1, m)=1 $

入射波 $ psi_i=sqrt(frac(m, planck k_1))e^(i k_1 x) $

反射波

$
  psi_r=
  frac(k_1-k_2, k_1+k_2)
  sqrt(frac(m, planck k_1))
  e^(-i k_1 x)
$

透射波

$
  psi_t=
  frac(2k_1, k_1+k_2)
  sqrt(frac(m, planck k_1))
  e^(i k_2 x)
$

概率流密度 $ j_i=1 $ $ j_r=(frac(k_1-k_2, k_1+k_2))^2 $ $ j_t=frac(k_2, k_1)(frac(2k_1, k_1+k_2))^2 = frac(4 k_1 k_2, (k_1+k_2)^2) $


== (2)

同样 $ psi(x)=A e^(i k x)+B e^(-i k x) $

其中 $k_0=sqrt(frac(2m(V_0+E), planck^2))$

势垒区域 $ psi(x)=C e^(beta x)+D e^(-beta x) $

其中 $beta=sqrt(frac(-2m E, planck^2))$

由于 $psi(x) arrow.r infinity$ 时不发散，$C=0$

由连续条件
$
          A+B & =D \
  i k A-i k B & =-beta D
$

得到 $ A & =frac(i k - beta, 2 i k)D \
B & =frac(i k + beta, 2 i k)D $

右侧 $ psi=D e^(-beta x) $

对应透射流 $ j_t=0 $

反射系数 $ R & =abs(frac(B, A))^2 \
  & =frac(k^2+beta^2, k^2+beta^2)=1 $

采用流归一化 $ j_i=1, j_r=1, j_t=0 $

因此 $ R=1 $
