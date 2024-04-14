Deformation to the Normal Cone
===

# Blow-up in detail

## Blow-up algebra (Rees algebra)

Given a ring $R$ with ideal $I\subset R$, we define the blow-up algebra (Rees algebra) for $R$ at $I$ to be the $R$-graded algebra

$$ Bl_I(R)=R\oplus I\oplus I^2\oplus\cdots $$

where the summand $I^n$ is in degree $n$. Let $a\in I$ a (non-zero) element. Denote $a^{(1)}$ the exact element $a$  viewed as an element in degree $1$ in $Bl_I(R)$. Then we define the affine blowup algebra $R[\frac{I}{a}]$ to be the degree $0$ part of $Bl_I(R)[(a^{(1)})^{-1}]$. Namely, this is the ring of elements in the form of $x/a^n$ where $x\in I^n$. Two representatives $x/a^n$ and $y/a^m$ are equal if and only if $a^k(a^mx-a^ny)=0$ for some $k\geq 0$. There is a canonical morphism from $R$ to $R[\frac{I}{a}]$ in the trivial way, sending $a\in R$ to the element at degree $0$.

Following the notation, we have

- The image of $a$ in $R[\frac{I}{a}]$ is a non-zerodivisor.
- $IR[\frac{I}{a}]=aR[\frac{I}{a}]$.
- $R$ and $R[\frac{I}{a}]$ are isomorphic on local $D(a)$.

Proof. 

## Blow-up algebra as local structure of blowups

For a scheme $X$ together with an ideal sheaf $\mathcal{I}$ corresponding to a closed subscheme $Z\subset X$ we define the blowup of $X$ along the center $Z$ to be

$$ b:Proj_X(\oplus_{n\geq 0}\mathcal{I}^n)\rightarrow X. $$




