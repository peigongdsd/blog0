# Presheaves & sheaves with transfers

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


