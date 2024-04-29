# Presheaves & sheaves with transfers

## Projection formula and composition of correspondences

### 17A.11
Let $f:X\rightarrow Y$ be a morphism of smooth schemes. Suppose given a cycle $\mathscr{X}$ on $X$, whose support is finite over $Y$, and a cycle $\mathscr{Y}$ on $Y$ which is in good position for $\mathscr{X}$. Then $f_*\mathscr{X}$ and $\mathscr{Y}$ intersect properly, and the projection formula holds:

$$ f_*(\mathscr{X}\cdot f^*\mathscr{Y})=f_*\mathscr{X}\cdot\mathscr{Y}. $$

This holds especially when computing compositions of correspondences, namely 

$$ X\xrightarrow{\Gamma_f} Y\xrightarrow{W} Z  $$

can be calculated as 

$$ XZ\xrightarrow{\Gamma_f\times id_Z}XYZ\xrightarrow{p_{XZ}} XZ. $$


## Some examples

### 1.10
(Excercise) $Cor_k(k,X)$ is the group of zero-cycles in $X$. If $W$ is a finite correspondence from $\mathbb{A}^1$ to $X$ and $s,t:k\rightarrow\mathbb{A}^1$ are $k$-points, then the zero-cycles 

## Presheaf with transfers

Remember we have defined a category $Cor_k$ with objects being smooth schemes over $k$ and morphisms being *finite correspondences*. A *presheaf with transfers* is a contravariant additive functor $F:Cor_k\rightarrow Ab$, remembering that $Cor_k$ is an additive category. The category of presheaves with transfers (over $k$) is denoted by $PST$ ($PST(k)$).

So if $F$ is a presheaf with transfers, there is a natural pairing

$$ Cor(X,Y)\otimes F(Y)\rightarrow F(X). $$

### 2.3
(Theorem) The category $PST(k)$ is abelian and has enough injectives and projectives.

### Examples 


### 2.8
(Definition) If $X$ is a smooth scheme over $k$ we let $\mathbb{Z}_{tr}(X)$ denote the presheaf with transfers represented by $X$, or equivalantly $\mathbb{Z}_{tr}(X)(U)=Cor_k(U,X)$. By Yoneda lemma it's obvious that 

$$ Hom_{PST}(\mathbb{Z}_{tr}(X), F)=F(X). $$

It follows that $\mathbb{Z}_{tr}(X)$ is a projective object in $PST(k)$. 


## Sheaf with transfers


