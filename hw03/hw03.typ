#set page(
  paper: "a4",
  margin: (x: 23mm, y: 20mm),
  header: context if counter(page).get().first() > 1 {
    align(right, text(size: 8.5pt, fill: gray)[Quantum Mechanics · Chapter 3])
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

#align(center)[#text(size: 19pt, weight: "bold")[Quantum Mechanics, Chapter 3]]

#align(center)[Lin Hsuancheng]

= Problem 1

== (1)

$
  [A, B C] = A B C - B C A
$

插入相消的项：
$
  - B A C + B A C
$

$
  [A, B C] & = A B C - B A C + B A C - B C A \
           & = (A B - B A)C + B(A C - C A) \
           & = [A,B]C + B[A,C]
$

== (2)

$
  [A,[B,C]] & = [A,B C-C B] \
            & = [A,B C]-[A,C B] \
            & = [A,B]C+B[A,C]-[A,C]B-C[A,B] \
            & = ([A,B]C-C[A,B])+(B[A,C]-[A,C]B) \
            & = [[A,B],C]+[B,[A,C]]
$

同理：
$
  [A,[B,C]] = [[A,B],C]+[B,[A,C]]
$

形式第一项：
$
  [[A,B],C] = -[C,[A,B]]
$

第二项：
$
  [B,[A,C]] = -[B,[C,A]]
$

因此得到：
$
  [A,[B,C]]+[B,[C,A]]+[C,[A,B]]=0
$

#pagebreak()

= Problem 2

== (1)

$
  e^(a frac(d, d x))phi(x)
  = sum_k frac((a frac(d, d x))^k, k!)phi(x)
$

由于 $a$ 和 $d_x$ 可交换：
$
  upright("LHS") & = sum_k frac(a^k, k!)frac(d^k, d x^k)phi(x)
$

恰好是泰勒展开式的形式：
$
  upright("LHS")=phi(x+a)
$

对足够光滑的 $phi$ 成立。

== (2)

$
  F(x,p)=sum_(m,n) C_(m n)x^m p^n
$

$
  [p,F] & = sum_(m,n)C_(m n)(p x^m p^n-x^m p^(n+1)) \
        & = sum_(m,n)C_(m n)[p,x^m]p^n
$

求 $[p,x^m]$：
$
  [p,x^m] & =x^(m-1)[p,x]+[p,x^(m-1)]x \
          & =x^(m-1)[p,x]+x^(m-2)[p,x]x+[p,x^(m-2)]x^2
$

逐次展开：
$
  [p,x^m]=sum_(k=1)^(m)x^(m-k)[p,x]x^(k-1)
$

$
  [p,x^m]=-i planck(m-1)x^(m-1)
$

于是：
$
  [p,F] & =sum_(m,n)C_(m n)[p,x^m]p^n \
        & =-i planck sum_(m,n)C_(m n)(m-1)x^(m-1)p^n \
        & =-i planck partial_x F
$

此处 $partial_x$ 为对算符 $hat(x)$ 的形式求导。

$
  [x,F]=i planck partial_p F
$

$
  upright("LHS") & =sum_(m,n)C_(m n)(x^(m+1)p^n-x^m p^n x) \
                 & =sum_(m,n)C_(m n)x^m [x,p^n]
$

逐次展开：
$
  [x,p^n]=i planck(n-1)p^(n-1)
$

$
  [x,F] & =sum_(m,n)C_(m n)x^m [x,p^n] \
        & =i planck sum_(m,n)C_(m n)(n-1)x^m p^(n-1) \
        & =i planck partial_p F
$

$partial_p$ 代表算子 $p$ 的形式求导。

== (3)

记 $op("ad")_A (·)=[A,·]$。

记：
$
  U(x)=e^(-x A)B e^(x A)
$

我们计算 $U^(n)(0)$。我们通过归纳法证明

$
  U^(n)(x) = (-1)^n e^(-x A)op("ad")_A^n (B)e^(x A)
$

假设：
$
  U^(n-1)(x)=(-1)^(n-1)e^(-x A)op("ad")_A^(n-1)(B)e^(x A)
$

则：
$
  U^(n)(x)
  ={} & -A e^(-x A)op("ad")_A^(n-1)(B)e^(x A) \
      & +e^(-x A)op("ad")_A^(n-1)(B)A e^(x A)
$

而 $A$ 和 $e^(x A)$ 交换：
$
  U^(n)(x) & =e^(-x A)(-A op("ad")_A^(n-1)(B)
               +op("ad")_A^(n-1)(B)A)e^(x A) \
           & =e^(-x A)[-A,op("ad")_A^(n-1)(B)]e^(x A) \
           & =(-1)^n e^(-x A)op("ad")_A^n (B)e^(x A)
$

令 $x=0$，得：
$
  U^(n)(0)=(-1)^n op("ad")_A^n (B)
$

由泰勒展开式有：
$
  U(x)=sum_n frac((-1)^n op("ad")_A^n (B), n!)x^n
$

恰好是题目要求的式子。

== (4)

首先：
$
  integral_0^infinity psi^*p psi d x & =integral_0^infinity frac(2, a)e^(-2x/a)·frac(i planck, a) d x \
                                     & =frac(i planck, a)
$

说明：
$
  ⟨phi,p psi⟩!=⟨ p phi,psi⟩
$

现在说明问题所在，问题在于 $hat(p)=-i planck partial_x$ 对此 $psi(x)$ 不适用。我们将问题反过来说明这一点。

设：
$
  hat(p)=-i planck partial_x
$

则：
$
  ⟨phi,p psi⟩ & =integral_D phi^*(-i planck frac(d, d x)psi) d x \
              & =-i planck phi^*psi|_(partial D)
                +integral_D i planck frac(d phi^*, d x)psi d x \
              & =⟨ p phi,psi⟩-i planck phi^*psi|_(partial D)
$

可见若要 $p$ 是对称的算符，需要：
$
  -i planck psi^*psi|_(partial D)=0
$

而在该式中：
$
  -i planck psi^*psi|_0^infinity=frac(2i planck, a)!=0
$

可见 $hat(p)=-i planck partial_x$ 对此 $psi(x)$ 不是对称算符。

#pagebreak()

= Problem 3

== (1)

$
  L_i=epsilon_(i k l)x_k p_l
$

$
  [L_i,x_j] & =[epsilon_(i k l)x_k p_l,x_j] \
            & =epsilon_(i k l)[x_k p_l,x_j] \
            & =epsilon_(i k l)(x_k[p_l,x_j]+[x_k,x_j]p_l) \
            & =epsilon_(i k l)(x_k delta_(l j)(-i planck)+0) \
            & =-i planck epsilon_(i k j)x_k \
            & =i planck epsilon_(i j k)x_k
$

== (2)

$
  [L_i,L_j] & =[epsilon_(i k l)x_k p_l,epsilon_(j m n)x_m p_n] \
            & =epsilon_(i k l)epsilon_(j m n)[x_k p_l,x_m p_n] \
            & =epsilon_(i k l)epsilon_(j m n)(
                x_k[p_l,x_m p_n]+[x_k,x_m p_n]p_l) \
            & =epsilon_(i k l)epsilon_(j m n)(
              x_k x_m[p_l,p_n]+x_k[p_l,x_m]p_n \
            & quad+x_m[x_k,p_n]p_l+[x_k,x_m]p_n p_l) \
            & =epsilon_(i k l)epsilon_(j m n)(
                0-i planck delta_(l m)x_k p_n+i planck delta_(k n)x_m p_l+0) \
            & =-i planck epsilon_(i k l)epsilon_(j l n)x_k p_n
              +i planck epsilon_(i k l)epsilon_(j m k)x_m p_l \
            & =i planck(x_i p_j-x_j p_i) \
            & =i planck epsilon_(i j k)L_k
$

也可以写成：
$
  i planck(x_i p_j-x_j p_i) & =i planck(delta_(i l)delta_(m j)-delta_(i m)delta_(l j))x_l p_m \
                            & =i planck epsilon_(i j k)epsilon_(l m k)x_l p_m \
                            & =i planck epsilon_(i j k)L_k
$

== (3)

$
  (L times L)_i & = epsilon_(j ell m) x_ell p_m x_i p_j
                  - epsilon_(j ell m) x_ell p_m x_j p_i \
                & = epsilon_(j ell m) x_ell x_i p_m p_j
                  - i planck epsilon_(j ell m) delta_(m i) x_ell p_j \
                & quad - epsilon_(j ell m) x_ell x_j p_m p_i
                  + i planck epsilon_(j ell m) delta_(m j) x_ell p_i \
                & = -i planck epsilon_(j ell i) x_ell p_j \
                & = i planck epsilon_(i ell j) x_ell p_j \
                & = i planck L_i
$
#pagebreak()

= Problem 4

== (1)

$
  hat(l)_z Y_(1,1)=planck Y_(1,1)
$

$
  hat(l)_z Y_(0,0)=0
$

则可能会测到 $planck$ 和 $0$，概率为 $|c_1|^2,|c_2|^2$。

== (2)

$
  hat(l)^2Y_(1,1)=2planck^2Y_(1,1)
$

$
  hat(l)^2Y_(2,0)=6planck^2Y_(2,0)
$

可能测到 $2planck^2$ 和 $6planck^2$，概率为 $|c_1|^2,|c_2|^2$。

#pagebreak()

= Problem 5

记：
$
  |l,m⟩:=Y_(ell m)
$

则对任意的 $|l,m⟩$ 都有：
$
  ⟨ l,m|hat(l)_x|l,m⟩ & =⟨ l,m|frac(l_++l_-, 2)|l,m⟩ \
                      & =⟨ l,m|alpha|l,m+1⟩
                        +⟨ l,m|beta|l,m-1⟩ \
                      & =alpha⟨ l,m|l,m+1⟩
                        +beta⟨ l,m|l,m-1⟩ \
                      & =0+0=0
$

因为：
$
  (Delta l_x)^2=⟨ l_x^2⟩-⟨ l_x⟩^2=⟨ l_x^2⟩
$

下面计算 $⟨ l_x^2⟩$：
$
  ⟨ l,m|l_x^2|l,m⟩ & =⟨ l,m|(frac(l_++l_-, 2))^2|l,m⟩ \
                   & =⟨ l,m|frac(1, 4)l_+l_++frac(1, 4)l_+l_- \
                   & quad+frac(1, 4)l_-l_++frac(1, 4)l_-l_-|l,m⟩
$

只有 $l_+l_-$ 和 $l_-l_+$ 保留。

$
  ⟨ l,m|frac(1, 4)l_+l_-+frac(1, 4)l_-l_+|l,m⟩
$

而：
$
  l_+l_-=(l_x+i l_y)(l_x-i l_y)
$

$
  l_+l_- & =l_x^2+l_y^2-i[l_x,l_y] \
         & =l_x^2+l_y^2-i(i planck l_z) \
         & =l_x^2+l_y^2+planck l_z \
         & =l^2-l_z^2+planck l_z
$

同理：
$
  l_-l_+=l^2-l_z^2-planck l_z
$

得：
$
  ⟨ l,m|frac(1, 4)l_+l_-+frac(1, 4)l_-l_+|l,m⟩ & =⟨ l,m|frac(1, 2)(l^2-l_z^2)|l,m⟩ \
                                               & =frac(planck^2, 2)(l(l+1)-m^2)
$

