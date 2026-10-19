#set page(
  paper: "a4",
  margin: (x: 23mm, y: 20mm),
  header: context if counter(page).get().first() > 1 {
    align(right, text(size: 8.5pt, fill: gray)[Quantum Mechanics · Chapter 1])
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

#align(center)[#text(size: 19pt, weight: "bold")[Quantum Mechanics, Chapter 1]]

#align(center)[Lin Hsuancheng]

= Problem 1

== （1）

我们取空间中面元 $bold(S)$，以法线方向建立球坐标。

则单位时间内能流的谱密度为
#align(
  $
    M(lambda,T) & = integral_0^(2 pi) integral_0^(pi/2) B(lambda,T) cos theta (sin theta dif theta) dif phi \
                & = B(lambda,T) integral_0^(2 pi) dif phi integral_0^(pi/2) cos theta sin theta dif theta \
                & = pi B(lambda,T) = pi frac(2 h c^2, lambda^5) frac(1, exp(frac(h c, lambda k_B T))-1) \
                & approx 9.93 times 10^13 " W" dot "m"^(-3).
  $,
)

其中 $B(lambda,T) = frac(2 h c^2, lambda^5) frac(1, exp(frac(h c, lambda k_B T)) - 1)$ 是能流的角谱密度。

== （2）

德布罗意关系：
$ lambda tilde frac(h, p) = frac(h, m v). $

速度
$ v tilde sqrt(frac(8 k_B T, pi m)). $

得
$
  lambda tilde frac(h, sqrt(frac(8 k_B T, pi m)) dot m) = frac(h, sqrt(frac(8 m k_B T, pi))) approx 3.32 times 10^(-11) " m".
$

数密度 $n$ 和钠原子平均距离 $d$ 满足
$ n d^3 approx 1. $

得
$ d approx n^(-1/3) approx 2.15 times 10^(-7) " m". $

因此
$ d ≫ lambda. $

没有明显的量子效应。

= Problem 2

== （1）

不妨取 $A$ 为实数，由归一化条件
#align(
  $
    1 & = norm(psi(x))^2 \
      & = integral_R psi^*(x) psi(x) dif x \
      & = A^2 integral_0^infinity x^2 exp(-2 lambda x) dif x \
      & = A^2 frac(Gamma(3), (2 lambda)^3) \
      & = frac(A^2, 4 lambda^3).
  $,
)

因此
$ 1 = frac(A^2, 4 lambda^3), quad A = 2 lambda^(3/2). $

== （2）

首先计算 $overline(x)$
#align(
  $
    overline(x) & = integral_(-infinity)^(+infinity) psi^* x psi dif x \
                & = A^2 integral_0^infinity x^3 exp(-2 lambda x) dif x \
                & = A^2 frac(Gamma(4), (2 lambda)^4) \
                & = 4 lambda^3 dot frac(6, 16 lambda^4) \
                & = frac(3, 2 lambda).
  $,
)

然后计算 $overline(x^2)$
#align(
  $
    overline(x^2) & = integral_(-infinity)^(+infinity) psi^* x^2 psi dif x \
                  & = A^2 integral_0^infinity x^4 exp(-2 lambda x) dif x \
                  & = 4 lambda^3 dot frac(Gamma(5), (2 lambda)^5) \
                  & = 4 lambda^3 dot frac(24, 32 lambda^5) \
                  & = frac(3, lambda^2).
  $,
)

== （3）
动量表象下，我们有

#align(
  $
    phi(p) & = frac(1, sqrt(2 pi planck)) integral_(-infinity)^(+infinity) exp(-i p x/planck) psi(x) dif x \
           & = frac(2 lambda^(3/2), sqrt(2 pi planck)) integral_0^infinity x exp(-(i p/planck + lambda)x) dif x \
           & = frac(2 lambda^(3/2), sqrt(2 pi planck)) frac(1, (lambda+i p/planck)^2).
  $,
)

对应的概率密度函数为
$
  abs(phi(p))^2 = frac(2 lambda^3, pi planck) frac(1, (lambda^2 + p^2 / planck^2)^2).
$

== （4）
在动量表象下计算，首先计算 $overline(p)$

#align(
  $
    overline(p) &= integral_p phi^*(p) p phi(p) dif p \
    &= (frac(2 lambda^(3/2), sqrt(2 pi planck)))^2 integral_(-infinity)^(+infinity) frac(p, (lambda^2+(p/planck)^2)^2) dif p.
  $,
)

由于积分号内被积函数是奇函数，$ overline(p)=0 $。

#align(
  $
    overline(p^2) & = integral_p phi^*(p) p^2 phi(p) dif p \
    & = frac(2 lambda^3, pi planck) integral_(-infinity)^(+infinity) frac(p^2, (lambda^2+(p/planck)^2)^2) dif p \
    & = frac(2 lambda^3, pi planck) dot 2 pi i sum_("Im "p_i>0) op("Res") (frac(p^2, (lambda^2+(p/planck)^2)^2),p_i) \
    & = frac(4 lambda^3 i, planck) op("Res") (frac(p^2, (lambda^2+(p/planck)^2)^2),i planck lambda) \
    & = frac(4 lambda^3 i, planck) dot frac(-i planck^3, 4 lambda) = lambda^2 planck^2.
  $,
)

== （5）
验证不确定性关系

$ sqrt(overline((Delta x)^2)) dot sqrt(overline((Delta p)^2)) >= frac(planck, 2). $

我们分别有

$ sqrt(overline((Delta x)^2)) = sqrt(overline(x^2)-overline(x)^2) = frac(sqrt(3), 2 lambda), $
$ sqrt(overline((Delta p)^2)) = sqrt(overline(p^2)-overline(p)^2) = lambda planck. $

则
$ sqrt(overline((Delta x)^2)) dot sqrt(overline((Delta p)^2)) = frac(sqrt(3) planck, 2) > frac(planck, 2). $

满足不确定性关系。

= Problem 3

== （1）

动量表象下
#align(
  $
    psi_p(p)
    &= frac(1, sqrt(2 pi planck)) integral_(-infinity)^(+infinity) frac(1, sqrt(2 pi planck)) exp(i p_0 x/planck) exp(-i p x/planck) dif x \
    &= frac(1, 2 pi planck) dot 2 pi delta(frac(p-p_0, planck)) \
    &= delta(p-p_0).
  $,
)

由于所有可能集中 $p_0$，故统计涨落 $(Delta p)^2 = 0$ 。

== （2）

我们假设已经知道 $x$ 表象下
$ hat(x) = x , quad hat(p) = -i planck frac(dif, dif x). $

我们记 $phi(x) ↔ psi(p)$ 是各自表象下波函数。

由于力学量在不同表象下是一致的，我们有
$ integral_x phi^*(x) x phi(x) dif x = integral_p psi^*(p) hat(x) psi(p) dif p $
和
$ integral_x phi^*(x) (-i planck) frac(dif, dif x) phi(x) dif x = integral_p psi^*(p) hat(p) psi(p) dif p $

首先推导 $hat(p)$ 在动量表象下的表示

#align(
  $
    integral_x phi^*(x) hat(p) phi(x) dif x
    &= integral_x phi^*(x) (-i planck) frac(dif, dif x) phi(x) dif x \
    &= integral_x (frac(1, sqrt(2 pi planck)) integral_p exp(-i x p/planck) psi^*(p) dif p) (-i planck) frac(dif, dif x) phi(x) dif x \
    &= integral_p frac(psi^*(p), sqrt(2 pi planck)) integral_x (-i planck) exp(-i x p/planck) frac(dif, dif x) phi(x) dif x dif p. \
    &attach(=, t: "由分部积分") integral_p frac(psi^*(p), sqrt(2 pi planck)) ( (-i planck) [exp(-i x p/planck) phi(x)]_(-infinity)^(+infinity) - (-i planck)(-i p/planck) integral_x exp(-i x p/planck) phi(x) dif x ) dif p. \
    &attach(=, t: "束缚态情形下边界项消失") integral_p psi^*(p) frac(1, sqrt(2 pi planck)) (-i planck)(-i p/planck) (integral_x exp(-i x p/planck) phi(x) dif x) dif p \
    &= integral_p psi^*(p) p psi(p) dif p. \
  $,
)

因此动量表象下
$ hat(p) = p. $

#linebreak()

下面推导 $hat(x)$ 在动量表象下的表示，同理：
#align(
  $
    & integral_x phi^*(x) x phi(x) dif x \
    & = integral_x phi^*(x) x frac(1, sqrt(2 pi planck)) (integral_p psi(p) exp(i p x/planck) dif p) dif x \
    & = integral_x frac(phi^*(x), sqrt(2 pi planck)) integral_p psi(p) x exp(i p x/planck) dif p dif x.
  $,
)

注意
$ x exp(i p x/planck) = -i planck frac(dif, dif p) exp(i p x/planck). $

于是上上式化作
#align(
  $
    & integral_x frac(phi^*(x), sqrt(2 pi planck)) integral_p psi(p)(-i planck) frac(dif(exp(i p x/planck)), dif p) dif p dif x \
    &= integral_x frac(phi^*(x)(-i planck), sqrt(2 pi planck)) ( [psi(p) exp(i p x/planck)]_(-infinity)^(+infinity) - integral_p exp(i p x/planck) frac(dif psi(p), dif p) dif p ) dif x. \
    &attach(=, t: "束缚态下边界项消失") integral_x phi^*(x) frac(1, sqrt(2 pi planck)) (integral_p exp(i p x/planck) (i planck frac(dif, dif p)) psi(p) dif p) dif x. \
    &attach(=, t: "交换积分次序") integral_p (integral_x frac(phi^*(x) exp(i p x/planck), sqrt(2 pi planck)) dif x) (i planck frac(dif, dif p)) psi(p) dif p \
    &= integral_p psi^*(p) i planck frac(dif, dif p) psi(p) dif p. \
  $,
)

由此，$hat(x)$ 在动量表象下就是 $i planck frac(dif, dif p)$

== （3）

自由粒子的哈密顿量为
$ hat(H) = frac(hat(p)^2, 2m). $

由上一问，动量表象下 $hat(p)=p$，因此薛定谔方程直接变为
#align(
  $
    i planck frac(partial phi(p, t), partial t) & = hat(H) phi(p, t) \
                                                & = frac(hat(p)^2, 2m) phi(p, t) \
                                                & = frac(p^2, 2m) phi(p, t).
  $,
)

所以在动量表象下，自由粒子的波函数满足
$ i planck frac(partial phi(p, t), partial t) = frac(p^2, 2m) phi(p, t). $

= Problem 4

我们有
$ mat(psi_1; psi_2) = frac(1, sqrt(34)) mat(3, 5; 5, -3) mat(chi_1; chi_2) $

和
$ mat(chi_1; chi_2) = frac(1, sqrt(34)) mat(3, 5; 5, -3) mat(psi_1; psi_2). $

测量 $hat(A)$ 后得到 $alpha_1$，量子态为 $psi_1$ 有
$ psi_1 = frac(1, sqrt(34))(3 chi_1+5 chi_2). $

$ P(chi_1) = (frac(3, sqrt(34)))^2 = frac(9, 34). $
$ P(chi_2) = (frac(5, sqrt(34)))^2 = frac(25, 34). $

测得 $hat(B)$ 时，若为 $beta_1$
$ chi_1 = frac(1, sqrt(34))(3 psi_1+5 psi_2). $
$ P(psi_1|chi_1) = (frac(3, sqrt(34)))^2 = frac(9, 34) $

若测得 $beta_2$
$ chi_2 = frac(1, sqrt(34))(5 psi_1-3 psi_2). $
$ P(psi_1|chi_2) = (frac(5, sqrt(34)))^2 = frac(25, 34). $

则
$ P(psi_1) = P(psi_1|chi_1)P(chi_1)+P(psi_1|chi_2)P(chi_2) = frac(353, 578). $

= Problem 5

== （1）

由薛定谔方程
$ i planck frac(partial psi, partial t) = -frac(planck^2, 2m) nabla^2 psi + V psi. $

取共轭
$ -i planck frac(partial psi^*, partial t) = -frac(planck^2, 2m) nabla^2 psi^* + V psi^*. $

现在计算
#align(
  $
    frac(partial, partial t) norm(psi)^2 &= psi frac(partial psi^*, partial t) + psi^* frac(partial psi, partial t). \
    &= frac(i psi, planck) (-frac(planck^2, 2m)nabla^2 psi^*+V psi^*) + frac(-i psi^*, planck) (-frac(planck^2, 2m)nabla^2 psi+V psi) \
    &= frac(planck, 2m i) (psi nabla^2 psi^*-psi^* nabla^2 psi).
  $,
)
由恒等式
$ nabla dot (f bold(A)) = (nabla f) dot bold(A)+f(nabla dot bold(A)). $

代入 $f=psi^*, bold(A)=nabla psi$
$ nabla dot (psi^* nabla psi) = (nabla psi^*) dot nabla psi+psi^* nabla^2 psi. $

得
$ psi^* nabla^2 psi = nabla dot (psi^* nabla psi)-(nabla psi^*) dot (nabla psi). $

同理
$ psi nabla^2 psi^* = nabla dot (psi nabla psi^*)-(nabla psi) dot (nabla psi^*). $

将上二式代入 $frac(partial, partial t) norm(psi)^2$，得到
#align(
  $
    frac(partial, partial t) norm(psi)^2
    &= frac(planck, 2m i) (psi nabla^2 psi^*-psi^* nabla^2 psi). \
    &= -nabla dot (frac(planck, 2m i)(psi^* nabla psi-psi nabla psi^*)) = -nabla dot bold(j).
  $,
)

其中 $bold(j)$ 为
$ bold(j) = frac(planck, 2m i)(psi^* nabla psi-psi nabla psi^*). $

最终得到微分形式
$ frac(partial, partial t) norm(psi)^2+nabla dot bold(j)=0. $

从微分形式积分
$ integral_V frac(partial, partial t) norm(psi)^2 dif V = integral_V -nabla dot bold(j) dif V. $

左式化成
$ frac(partial, partial t) integral_V norm(psi)^2 dif V. $

右式由 Gauss 定理化成
$ -integral_V nabla dot bold(j) dif V = -integral_(partial V) bold(j) dot dif bold(S) . $

$V arrow infinity$ 时，由于边界 $partial V$ 上 $psi$ 和 $psi^*$ 都趋于零，后式
$ integral_(partial V) bold(j) dot dif bold(S) arrow 0. $

则得到积分形式
$ frac(partial, partial t) integral_V norm(psi)^2 dif V = 0. $

== （2）

重复上面步骤，但加入 $i V_2$，得到

#align(
  $
    frac(partial, partial t) norm(psi)^2+nabla dot bold(j) & = frac(i psi, planck)(-i V_2 psi^*) + frac(-i psi^*, planck)(i V_2 psi) \
    & = frac(2, planck) V_2 norm(psi)^2.
  $,
)

对微分形式求积分就得
$
  frac(partial, partial t) integral_V norm(psi)^2 dif V = -frac(planck, 2 i m) integral_(partial V) (psi^* nabla psi-psi nabla psi^*) dot dif bold(S) + frac(2, planck) integral_V V_2 norm(psi)^2 dif V.
$

可见，概率在有界空间内并不总是守恒
