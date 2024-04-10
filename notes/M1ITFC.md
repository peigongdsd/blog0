# Intersection Theory of Cycles

This part has many references, like Appendix 17A, SerreLocal, etc. This exposure will be based on 17A mainly.

All schemes considered here are (absolutely) seperated. For varieties, fix a base field $k$.

## Intersection operations

### 17A.1 
(Definition) (Serre's tor formula) $X/k$, two closed integral subvarieties $Z_1$ and $Z_2$ are said to *intersect properly* if every component of $Z_1\cap Z_2$ is of codimension no less than $codim(Z_1)+codim(Z_2)$, or $Z_1\cap Z_2=\varnothing$.

If the ambient variety $X$ is regular, the intersection product $Z_1\cdot Z_2$ is defined to be the formal sum $\sum n_i[W_i]$, where the sum is over (the generic point of) irreducible components of $Z_1\cap Z_2$, and $n_i$s are the *intersection multiplcities*, defined as follows. If $A$ is the local ring of $X$ at $W_j$, and $Z_i$ localize to $I_i$, then

$$ n_j=\sum_{k\geq 0}(-1)^k length\ Tor_i^A(A/I_1,A/I_2). $$

If $X/k$ is nonsingular and connected, [0B0Q](https://stacks.math.columbia.edu/tag/0B0Q) says that $\Delta:X\rightarrow X\times_k X$ is a regular immersion of codimension $dim(X)$, and [0AZN](https://stacks.math.columbia.edu/tag/0AZN) says that for a regular immersion $f:X\rightarrow Y$ of codimension $c$ and $Z$ a subvariety of $Y$ of dimension $d$, $f^{-1}(Z)$ has dimension at least $d-c$. Combining these two facts and note that $Z_1\cap Z_2$ is the scheme-theoretic inverse image of $Z_1\times_k Z_2$ under the diagonal $\Delta_X$, $W_j$ cannot be of codimension more than $codim(Z_1)+codim(Z_2)$. In this case, if $Z_1$ and $Z_2$ meets properly, which will be of our main interest sequentially, all of those $W_i$s will be of same codimension (or pure).

For two cycles $\mathcal{V}=\sum m_iV_i$ and $\mathcal{W}=\sum n_jW_j$, where $V_i$s and $W_j$s intersect properly pairwisely, the intersection product $\mathcal{V}\cdot\mathcal{W}$ will be defined as $\sum m_in_j(V_i\cdot W_j)$.

We know that 

$$ \mathcal{M}\otimes_X^L\mathcal{N}\otimes_X\mathcal{O}_{X,x}\rightarrow \mathcal{M}_x\otimes_{\mathcal{O}_{X,x}}^L\mathcal{N}_x $$

is an isomorphism (let $\mathcal{N}$ be flat). As a result, if a point $x$ is not coaintained in the support of $Tor_0^{\mathcal{O}_X}(\mathcal{M},\mathcal{N})$, the length of $\mathcal{M}\otimes^L\mathcal{N}$ at $x$ must be $0$.

### 17A.2 
(Associative law) On a smooth variety $X/k$, $\mathcal{V}_1\cdot (\mathcal{V}_2\cdot\mathcal{V}_3)$ is equal to $(\mathcal{V}_1\cdot\mathcal{V}_2)\cdot\mathcal{V}_3$.

Maybe I'll add a proof here. Later.

### 17A.3
(Definition) (Pullback along a morphism) For $f:X\rightarrow Y$ with $X$ and $Y$ regular, and $\mathcal{Y}$ is a cycle on $Y$ of codimension $i$. We say that $f^*(\mathcal{Y})$ is *defined* if each component of $f^{-1}(Supp(\mathcal(Y)))$. In this case, we define $f^*(\mathcal{Y})$ to be $\Gamma_f\cdot(X\times\mathcal{Y})$, identifying $\Gamma_f$ with $X$. 

## Projection formula in derived category of qcoh sheaves
See [01E6](https://stacks.math.columbia.edu/tag/01E6). For a morphism $f:X\rightarrow Y$, the *projection formula* we refer to is a morphism in $D(Y)$, namely

$$ Rf_*E\otimes_Y^L F\rightarrow Rf_*(E\otimes_X^L Lf^*F) $$

which is defiend to be the ajoint of the canonical morphism

$$ Lf^*(Rf_*E\otimes_Y^L F)=Lf^*Rf_*E\otimes_X^L Lf^*F\rightarrow E\otimes_X^L Lf^*F. $$

Refer to [08FK](https://stacks.math.columbia.edu/tag/08FK) for *strictly perfect* objects and [08G4](https://stacks.math.columbia.edu/tag/08G4) for *perfect* objects.

There is a bunch of cases when the projection formula is an isomorphism (we may say the projection formula **holds** for $f$). For example, if $X$ and $Y$ are ringed spaces, it holds when $F$ is perfect (this is [0B54](https://stacks.math.columbia.edu/tag/0B54)), and hence when $Y$ is a nonsingular variety and $F$ is coherent, since in this case $F^i$ has a resolution of locally free sheaves (of finite rank, see Fulton, Intersection theory, Appendix B.8.3), which is stricly perfect. In fact, when $F$ is equal to a locally free sheaf, namely $\mathcal{V}$, the morphism 

$$ (Rf_*E)\otimes_Y\mathcal{V}\rightarrow Rf_*(E\otimes_X f^*\mathcal{V}) $$

is obviously an isomorphism! Also, if $f$ is a qcqs-morphism between schemes, the projection formula for $f$ also holds, ref. [08EU](https://stacks.math.columbia.edu/tag/08EU).

## Reduction to diagonal
Let $X$ be nonsingular variety. Denote by $\Delta:X\rightarrow X\times X$ the diagonal immersion. If $K$ and $M$ are objects in $D(QCoh(X))$, there are canonical morphisms

$$ L\Delta^*(Lpr_1^*(K)\otimes_{X\times X}^L Lpr_2^*(M))\rightarrow K\otimes_X^L M $$ and 

$$ \mathcal{O}_\Delta\otimes_{X\times X}^L Lpr_1^*(K)\otimes_{X\times X}^L Lpr_2^*(M)\rightarrow\Delta_*(K\otimes_X^L M) $$

in $D(X)$ and $D(X\times X)$ respectively. Note that pushforward along closed immersion is exact, and the second morphism follows from the projection formula of $\Delta_X$, taking $E$ and $F$ as $\mathcal{O}_X$ and $Lpr_1^*(K)\otimes_{X\times X}^L Lpr_2^*(M)$ respectively. The smoothness of $X\times X$ gives the projective formula holds in this case. By applying $\Delta_X^{-1}$ to both sides we see that the first one is also an isomorphism.

### [0B0U](https://stacks.math.columbia.edu/tag/0B0U)
Let $X/k$ be a nonsingular variety and $\alpha$ and $\beta$ be cycles. Then

1. $\alpha\times\beta$ and $[\Delta]$ intersects properly. 
2. $\Delta_*(\alpha\cdot\beta)=[\Delta]\cdot(\alpha\times\beta)$ as cycles on $X\times X$.
3. If $X$ is proper, $p_{1*}([\Delta]\cdot(\alpha\times\beta))$ is the same as $\alpha\cdot\beta$.

Say $\alpha$ and $\beta$ are prime and generate by integral subschemes $V$ and $W$ respectively. Then $codim(V\times W)+codim(X)=codim(\Delta(V\times W))=codim(\Delta\cap (V\times W))$ suggests that statement 1 holds. Statement $2$ follows directly from the subsequent equation ($Lp^*\otimes_{X\times X}^LLq^*$). Statement 3 is easy from 2.

## Now back to the lecture

### 17A.4
(Example) 

- If $f:X\rightarrow Y$ is flat and $\mathcal{Y}=[V]$, $f^*(\mathcal{Y})$ is the cycle associated to the subcheme $f^{-1}(V)$.

```rawlatex
\begin{tikzcd}
	X & {X\times X} & {X\times Y}
	\arrow["{\Delta_X}", from=1-1, to=1-2]
	\arrow["{id_X\times f}", from=1-2, to=1-3]
\end{tikzcd}
```

Since $id_X\times f$ is flat, we can identify $(id_X\times f)^*(X\times\mathcal{Y}\cdot\Gamma_f)|_{\Gamma{f}}$ on $X\times Y$ with $(X\times f^*(\mathcal{Y}))\cdot\Delta_X|_{\Delta_X}$ on $X\times X$, which is equal to $f^*{\mathcal{Y}}$ on $X$ by reduction to diagonal.

- If $X$ is a subvariety of $Y$, then the cycle $f^*(\mathcal{Y})$ on $X$ is the same as the cycle $X\cdot\mathcal{Y}$ viewed as a cyle on $X$.

- regular...

### 17A.6
Let $f:Y'\rightarrow Y$ be a morphism of smooth varieties and $\mathcal{W}$ a cycle on $Y'$. We saya cycle $\mathcal{Y}$ on $Y$ is in good position for ${W}$ relative to $f$ if the cycle $f^*{\mathcal{Y}}$ is defined (has correct codimension) and intersects $\mathcal{W}$ properly on $Y'$. 

### Irrelevant of the base for doing intersection product

### Vanishing theorem on wrong codimensions


# Finite Correspondence

The construction of *finite correspondence* is the foundation for Voevodsky's theory of mixed motives over a field (even over an arbitary noetherian base $S$). All schemes considered here are smooth separated over a base field $k$. Namely, we denote by $Sm/k$ the full subcategory of smooth spearated schemes over $k$. We will embedded this category into $Cor_k$, which is constructed below.

### 1.1 
(Definition) $X/k$ and $Y/k$ be in $Sm/k$. When $X$ is integral(connected), we define an *elementary correspondence* from $X$ to $Y$ to be an irreducible closed subset $W$ of $X\times Y$ where the composition $W\rightarrow X\times Y\rightarrow X$ is finite and surjective. The free abelian group genereted by such is named $Cors_k(X,Y)$. Then, we define $Cors(\coprod_iX_i, Y)=\oplus_iCors(X_i,Y)$. 

### 1.2
(Example) Since schemes we considered are separated, all the diagrams are closed. So there is a embedding $Mor_k(X,Y)\subset Cors_k(X,Y)$ sending $f$ to $\Gamma_f$. Especially, $id_X$ is then mapped to $\Delta_X$. 

### 1.3
We associate a finite correspondence from $X$ to $Y$ to a subscheme $Z$ of $X\times Y$ by taking the associated cycle $[Z]$, like what we've done in ordinary intersection theory.

### Composition 
Given elementart correspondences $V\in Cors(X,Y)$ and $W\in Cors(Y,Z)$, we form the intersection product 

$$ [T]=(V\times Z)\cdot (X\times W) $$

of the correspondending cycle in $X\times Y\times Z$. Then the composition of these two correspondences is defined to be the pushforward $(p_{XYZ}^{XZ})_*[T]$, which is then denoted by $W\circ V$. Then we'll have two things to prove, namely

- $V$ and $W$ meets properly,
- and every component of $[T]$ is finite and surjective over a component of $X$. 

### EGA IV.14.4.4 (Chevalley’s criterion)
ref.

### 1.6
Let $Z$ be an *intergal* scheme, finte and surjective over a *normal* (so geometric unibranch) scheme $S$. Then for every morphism $T\rightarrow S$ with $T$ connected, every component of $T\times_SZ$ is finite and surjective over $T$.

Since $f$ is equidimensional over $S$ of dimension $1$, $f$ is universally open, hence the lifting along $T\rightarrow S$ is universally open and surjective, hence universally closed. Clearly every generic point of $T\times_SZ$ is over the generic point of $T$.

### 1.7
(Lemma) Composition of finite correspondences make sense.

Let $V\subset X\times Y$ and $W\subset X\times Z$ be irreducible closed subsets which are f.s. over $X$ and $Y$ resp. Then $V\times Z$ and $X\times W$ intersect properly, and each component of the push-forwad of the cycle $[T]$ where $T=(V\times Z)\cap(X\times W)$ is finite and surjective over $X$.

```rawlatex
\begin{tikzcd}
	{\tilde{V}\times_Y\tilde{W}} & {\tilde{W}} & Z \\
	{\tilde{V}} & Y \\
	X
	\arrow[from=2-1, to=2-2]
	\arrow["{f.s.}"', from=2-1, to=3-1]
	\arrow["{f.s.}"', from=1-2, to=2-2]
	\arrow[from=1-2, to=1-3]
	\arrow[from=1-1, to=1-2]
	\arrow[from=1-1, to=2-1]
\end{tikzcd}
```

Let $\tilde{V}$ (resp. $\tilde{W}$) be the underlying integral scheme of $V$ (resp. $W$) .We may assume that $X$ and $Y$ are connected. It's already seen in last lemma that each component of $\tilde{V}\times_Y\tilde{W}$, namely $T_i$, is f.s. over $\tilde{V}$ and hence $X$. Therefore $dim T_i=dim X$ for all $i$, i.e. $\tilde{V}\times Z$ meets $X\times\tilde{W}$ properly.





