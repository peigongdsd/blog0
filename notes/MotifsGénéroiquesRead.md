Translation Cache on Reading *Motifs Généroiques* by Frédéric Déglise
===

# Abstract
The aim of the article is to show that every mixed triangulated motive in the sense of V. Voevodsky determines a canonical cycle module in the sense of M. Rost. Our method consists of interpreting geometrically the axioms of cycle modules in a category of pro-motives called *generic motives*. It is general enough to show at the same time that every cohomological theory which induces a realisation of triangulated mixed motives defines a canonical cycle module. This is in particular applicable to De Rham and rigid cohomology.


# 1. Transfers
To lighten the notations, define $XY$ to be $X\times_k Y$.

## 1.1 Transpose in finite correspondances
$X$, $Y$ be smooth schemes. (Finite) correspondence defined as common. For $f:X\rightarrow Y$, the graph $\Gamma_f$ is a finite correspondence from $X$ to $Y$. If $f$ is finite and equidimensional, $\Gamma_f$ is also a correspondence from $Y$ to $X$.

### 1.1.1
(Definition) $f:X\rightarrow Y$ a *finite equidimensional* morphism between smooth schemes. (Then $f$ is open using Chevalley's criterion.) We call $f^t$ or the *transpose* of $f$ the finite correspondence from $Y$ to $X$ defined by $\Gamma_f$. The induced morphism $M(Y)\rightarrow M(X)$ in $DM_-^{eff}(k)$ is defined by $f^*$.

### 1.1.2
(Lemma) $f:Y\rightarrow X$ as above. We have
1. For $\alpha\in Cors_k(Y,Z)$, $\alpha\circ f^t=(f\times\mathbb{1}_Z)_*(\alpha)$.
2. For $g:Z\rightarrow Y$ finite and equidimensional, $(f\circ g)^t=g^t\circ f^t$. 

Proof. 
```rawlatex
\begin{tikzcd}
	{X\times Y\times Z} & {X\times Z} \\
	{Y\times Z}
	\arrow["{f\times id_Y\times id_Z}", from=2-1, to=1-1]
	\arrow["{p_{13}}", from=1-1, to=1-2]
	\arrow["{f\times id_Z}"', from=2-1, to=1-2]
\end{tikzcd}
```

So the first statement follows. The second statement is straightforward. $\blacksquare$

We put an end to this part with a generalized projection formula. To state this, we need the following definition.

### 1.1.3
(Definition) For morphisms between schemes.
```rawlatex
\begin{tikzcd}
	{Y'} & Y \\
	{X'} & X
	\arrow["f", from=1-2, to=2-2]
	\arrow["p", from=1-1, to=2-1]
	\arrow["q"{description}, from=1-1, to=1-2]
	\arrow["g"{description}, from=2-1, to=2-2]
\end{tikzcd}
```

We'll say it's quasi-cartesian if it's commutative and cartetian on the underlying topological space.

Consider a quasi-cartesian diagram as above where the schemes are smooth, $f$ finite equidimensional and $g$ is dominant. Denote by $R=\kappa(Y)\otimes_{\kappa(X)}\kappa(X')$ the total fraction ring of $Y'$, points of which corresponding to components of $Y'$ bijectively. For any $x\in Spec(R)$, denote by $Y'(x)$ the closure of $x$ in $Y'_{red}$, and set $q_x=q|_{Y'(x)}$, $p_x=p|_{Y'(x)}$.

### 1.1.4
(Proposition) Assumption and notations as above. Then 

$$ f^t\circ g=\sum_{x\in Spec(R)}lg_R(R_x)\cdot(q_x\circ p_x^t). $$

Proof. We have a equalizer diagram
```rawlatex
\begin{tikzcd}
	{X'\times_XY} & {X'\times_kY} & {X'\times_kX\times_kY}
	\arrow[from=1-1, to=1-2]
	\arrow["{id\times f\times id}", shift left, from=1-2, to=1-3]
	\arrow["{id\times g\times id}"', shift right, from=1-2, to=1-3]
\end{tikzcd}
```

Then we denote by $W$ the schematic intersection $\Gamma_gY\cap X'\Gamma_f$ in $X'XY$. From the diagram we see that $W$ is isomorphic to the schematic image of $X'\times_XY\rightarrow X'Y$. Furthermore, **the intersection is proper** and **the components of $W$ correspond to points of $R$ bijectively**. By hypothesis, $W_{red}=Y'$ is smooth, and it follows that for any $x\in Spec(R)$, viewed as a generic point of $W$, $(\mathcal{O}_{W,x})_{red}$ is a Cohen-Macauley local ring, or to say, with depth equal to it's dimension (cf. [Ful98], A.7.). Consequently, by applying proposition 7.1 of [Ful98], the intersection multiplcity of $x$ in $W$ is equal to the length of the Artinian ring $\mathcal{O}_{W,x}$. 
As a result, the finite correspondence $f^t\circ g$ is the cycle on the subscheme $W$ of $X'Y$, namely

$$ f^t\circ g=\sum_{x\in Spec(R)}lg(\mathcal{O}_{W,x})[Y'(x)]_{X'Y} $$

As we commented before, $R$ is isomorphic to the total fractional ring of $W$. So for any $x\in Spec(R)$, $lg(\mathcal{O}_{W,x})=lg(R_x)$. Finally, calculation shows immediately that for any $x\in Spec(R)$, $q_x\circ p_x^t=[Y'(x)]_{Y'Y}$.

## 1.2 Exterior cup product

For a smooth scheme, denote by $\Delta_X:X\rightarrow X\times_kX$ the associated diagonal immersion.

### 1.2.1
(Definition) Let $\mathcal{M}$ and $\mathcal{N}$ be objects of $DM_-^{eff}(k)$ and $\alpha:M(X)\rightarrow\mathcal{M}$, $\beta:M(X)\rightarrow\mathcal{N}$ be morphisms in $DM_-^{eff}(k)$.

We set *exteroir cup-product* of $\alpha$ and $\beta$ over $X$ to be composite of morphisms
```rawlatex
\begin{tikzcd}
	{M(X)} & {M(X)\otimes M(X)} & {\mathcal{M}\otimes\mathcal{N}}
	\arrow["{\Delta_X}", from=1-1, to=1-2]
	\arrow["\alpha\otimes\beta", from=1-2, to=1-3]
\end{tikzcd}
```

We denote it by $\alpha\boxtimes_X\beta$. 

### 1.2.2
(Example) Consider $\alpha\in Cors(X,Y)$ and $\beta\in Cors(X,Z)$. Elementary calculation shows that 

$$ M(\alpha)\boxtimes M(\beta)=M(p_{XYZ}^{XY*}(\alpha)\cdot p_{XYZ}^{XZ*}(\beta)). $$

Well, this is not so easy. We have to consider a composition

```rawlatex
\begin{tikzcd}
	XYZ & XXXYZ & XYZ
	\arrow["{p_{XXXYZ}^{XYZ}}", from=1-2, to=1-3]
	\arrow["{\Gamma_\Delta\times id_{YZ}}", from=1-1, to=1-2]
\end{tikzcd}
```

Abbreviate $\Gamma_\Delta\times id_{YZ}$ simply by $\Gamma$, then we have
$$\begin{aligned}
(p_{13})_*(\Gamma_*[XYZ]\cdot(X\times\alpha\times\beta))&=(p_{13})_*\Gamma_*([XYZ]\cdot\Gamma^*(X\times\alpha\times\beta)) \\
&=\Gamma^*(X\times\alpha\times\beta)
\end{aligned}$$

### 1.2.3
We will particularly consider this cup product in the case where, for a pair of natural integers $n$ and $m$, $\mathcal{M}=\mathbb{Z}(m)[2m]$ and $\mathcal{N}=\mathbb{Z}(n)[2n]$.

$\mathbb{Z}(\cdot)[2\cdot]$ is equipped with a canonical ring structure for the tensor product of $DM_-^{eff}(k)$. As a result, for any natural integers $n$ and $m$, we have a canonical isomorphism 

$$ \epsilon:\mathbb{Z}(m)[2m]\otimes\mathbb{Z}(n)[2n]\rightarrow\mathbb{Z}(n+m)[2(n+m)]. $$

For two morphisms $\alpha:M(X)\rightarrow\mathbb{Z}(m)[2m]$ and $\beta:M(X)\rightarrow\mathbb{Z}(n)[2n]$, we define the internal cup product associated to $\epsilon$ from $\alpha$ and $\beta$ as the morphism

$$ \alpha\smile\beta=\epsilon\circ(\alpha\boxtimes\beta). $$

This morphism corresponds to a motivic cohomology class which is none other than the cup product of $\alpha$ and $\beta$.

The following formulas result easily from the classical theory of cycle intersection, and we leave their demonstration to the reader.

### 1.2.4
(Proposition) For $f:Y\rightarrow X$ a morphism between smooth schemes. Consider $\alpha:M(X)\rightarrow\mathcal{M}$, $\beta:M(X)\rightarrow\mathcal{N}$, $\gamma:M(X)\rightarrow\mathcal{P}$ be morphisms in $DM_-^{eff}(k)$, Then the following relationships holds:

1. $(\alpha\boxtimes\beta)\boxtimes\gamma=\alpha\boxtimes(\beta\boxtimes\gamma)$.
2. $(\alpha\boxtimes_X\beta)\circ f_*=(\alpha\circ f_*)\boxtimes_Y(\beta\circ f_*)$.

Furthermore if $f$ is finite equidimensional,



# Gysin Triangle

## 2.1 Relative Motive

### 2.1.1
(Definition) Let $X$ be a smooth scheme and $Y$ a smooth subscheme of $X$. We denote $L[X/Y]$ the cokernel of the inclusion morphism $L[Y]\rightarrow L[X]$ in $\mathcal{N}_k^{tr}$. We also denote $M(X/Y)=C^*L[X/Y]$ the corresponding motivic complex ($A^1$-localization).

*Closed pair* we are referring to is any pair $(X,Z)$ for a smooth scheme $X$ and a closed subscheme $Z$ of $X$. We will simply say $(X,Z)$ is *smooth* if $Z$ is smooth and *of codimension $n$* if $Z$ is of pure codimension $n$ in $X$.

For $(X,Z)$ a closed pair, we denote the corresponding motive $M(X/X-Z)$ by $M_Z(X)$ (following Voevodsky) of simply $M(X,Z)$. We call it the relative motive associated to closed pair $(X,Z)$. The motive fits into the following distinguished triangle 

$$ M(X-Z)\rightarrow M(X)\rightarrow M_Z(X)\rightarrow +1. $$

A morphism of closed pairs $(f,g):(Y,T)\rightarrow (X,Z)$ is a commutative diagram of morphisms

```rawlatex
\begin{tikzcd}
	T & Y \\
	Z & X
	\arrow["g"', from=1-1, to=2-1]
	\arrow["f", from=1-2, to=2-2]
	\arrow[hook, from=1-1, to=1-2]
	\arrow[hook, from=2-1, to=2-2]
\end{tikzcd}
```

which is quasi-cartesian (which means cartesian on underlying topological spaces). We say that this morphism is *cartesian* if the diagram is cartesian. If $\mathcal{P}$ is a property of morphism of schemes, we say $(f,g)$ satisfies $\mathcal{P}$ if $f$ satisfies $P$. Such a morphism induces a morphism $(f,g)_*:M_T(Y)\rightarrow M_Z(X)$ in $DM_-^{eff}(k)$.

### 2.1.2

Say $(f,g):(Y,T)\rightarrow (X,Z)$ a morphism of closed pair which is *finite equidimensional*. By definition, the following square 

```rawlatex
\begin{tikzcd}
	{Y-T} & Y \\
	{X-Z} & X
	\arrow["h"', from=1-1, to=2-1]
	\arrow["f", from=1-2, to=2-2]
	\arrow[hook, from=1-1, to=1-2]
	\arrow[hook, from=2-1, to=2-2]
\end{tikzcd}
```

is cartesian. So, according to proposition 1.1.4, this entails a unique induced morphism $\alpha$, depicted as a dashed line in the following diagram in the category of sheaves with transfers

```rawlatex
\begin{tikzcd}
	0 & {L[X-Z]} & {L[X]} & {L[X/Z]} & 0 \\
	0 & {L[Y-T]} & {L[Y]} & {L[Y/T]} & 0
	\arrow[from=1-1, to=1-2]
	\arrow[from=1-2, to=1-3]
	\arrow[from=1-3, to=1-4]
	\arrow[from=1-4, to=1-5]
	\arrow[from=2-1, to=2-2]
	\arrow[from=2-2, to=2-3]
	\arrow[from=2-3, to=2-4]
	\arrow[from=2-4, to=2-5]
	\arrow["\alpha", dashed, from=1-4, to=2-4]
	\arrow["{L[f^t]}", from=1-3, to=2-3]
	\arrow["{L[h^t]}", from=1-2, to=2-2]
\end{tikzcd}
```

### 2.1.3

(Definition) Using the preceding notations, $(f,g)^*=C^*(\alpha)$ defines a morphism $M_Z(X)\rightarrow M_T(Y)$.

By definition, the morphism fits into a morphism of distinguished triangle

```rawlatex
\begin{tikzcd}
	{M(X-Z)} & {M(X)} & {M(X/Z)} & {+1} \\
	{M(Y-T)} & {M(Y)} & {M(Y/T)} & {+1}
	\arrow[from=1-1, to=1-2]
	\arrow[from=1-2, to=1-3]
	\arrow[from=1-3, to=1-4]
	\arrow[from=2-1, to=2-2]
	\arrow[from=2-2, to=2-3]
	\arrow[from=2-3, to=2-4]
	\arrow["{(f,g)^*}", dashed, from=1-3, to=2-3]
	\arrow["{f^*}", from=1-2, to=2-2]
	\arrow["{h^*}", from=1-1, to=2-1]
\end{tikzcd}
```

It's easily deduced from proposition 1.1.4 that

### 2.1.4
(Proposition) Consider the commutative diagram

```rawlatex
\begin{tikzcd}
	{(Y',T')} & {(Y,T)} \\
	{(X',Z')} & {(X,Z)}
	\arrow["{(p,q)}", from=2-1, to=2-2]
	\arrow["{(p',q')}", from=1-1, to=1-2]
	\arrow["{(f,g)}"{description}, from=1-2, to=2-2]
	\arrow["{(f',g')}"{description}, from=1-1, to=2-1]
\end{tikzcd}
```

of closed pairs where $(f,g)$ is finite equidimensional and $(p, q)$ is dominant. Further we suppose $X$, $X'$ and $Y$ are connected, and the induced diagram on which is quasi-cartesian.

Say $R=\kappa(X')\otimes_{\kappa(X)}\kappa(Y)$. For any $x\in Spec(R)$, we denote $(f_x',g_x')$ and $(p_x',q_x')$ be restrictions of $(f',g')$ and $(p',q')$ resp. to the connected component of $Y'$ at $x$. Then we have

$$ (f,g)^*(p,q)_*=\sum_{x\in Spec(R)} lg_R(R_x)(p_x',q_x')_*(f_x',g_x')^*. $$

## 2.2 Purity Theorem

Suppose $(X,Z)$ is a smooth closed pair. We consider the space of deformation to the normal cone 

$$ D_Z(X)=B_Z(\mathbb{A}_X^1)-B_ZX $$

where $B_Z(\mathbb{A}_X^1)$ (resp. $B_Z(X)$) refers to the blowing up of $\mathbb{A}_X^1$ at $0\times Z$ (resp. $X$ at $Z$), with $B_ZX$ viewed as a closed subscheme of $B_Z(\mathbb{A}_X^1)$ in the evident way. So $D_ZX$ is flat over $\mathbb{A}^1$ with fibre at $1$ isomorphic to $X$ and fibre at $0$ isomorphic to the normal bundle $N_ZX$ of $Z$ in $X$. Finally, note that $D_ZZ=\mathbb{A}_Z^1$ is a closed subscheme of $D_ZX$. One then deduce the morphisms between closed paires

```rawlatex
\begin{tikzcd}
	{(X,Z)} & {(D_ZX,\mathbb{A}_Z^1)} & {(N_ZX,Z)}
	\arrow["d", from=1-1, to=1-2]
	\arrow["{d'}"', from=1-3, to=1-2]
\end{tikzcd}
```

Following results in [Deg04, prop.2.4] such morphisms induces morphisms between relative motives

```rawlatex
\begin{tikzcd}
	{M_Z(X)} & {M(D_ZX,\mathbb{A}_Z^1)} & {M_Z(N_ZX)}
	\arrow["{d_*}", from=1-1, to=1-2]
	\arrow["{d'_*}"', from=1-3, to=1-2]
\end{tikzcd}
```

are in fact **isomorphisms**.  Note that the morphisms $d$ and $d'$ are natural with respect to the Cartesian morphisms of closed pairs. 

### 2.2.1 Thom motive
(Definition) For $X$ a smooth scheme, and $E/X$ a vector bundle. We consider the closed pair $(E,X)$ where $X$ viewed as the zero section of $E$. Define $MTh(E/X)=M(E,X)$ to be the relative motive, which is called the Thom motive of $E/X$.

<span style="color:red">
*The symbol $MTh(E/X)$ doesn't mean that this is the cone of the zero section!*
</span>

By abuse of notations this is also denoted by $MTh(E)$. As a relative motive, Thom motive is functorial respect to morphisms of closed pairs $(f,g):(F,Y)\rightarrow (E,X)$ arise from morphisms between vector bundles, namely $F/Y$ and $E/X$. It should be stressed that $f$ may *not* be a morphism between vector bundles, but if it is indeed, we denote simply by $MTh(f)$ the assotiated morphism on Thom spaces.

Note also that the Thom motif is contravariant with respect to finite equidimensional morphisms of closed pairs (cf. 2.1.2).

### 2.2.2
Say $E/X$ (resp. $F/X$) a vector bundle with sections dual to $\mathcal{E}$ (resp. $\mathcal{F}$). We denote by $E\boxplus F$ the vector bundle, which is then called the *exterior direct sum* of $E$ and $F$, to be the vector bundle over $X\times_kY$ which is defined by $(p_{XY}^X)^*\mathcal{E}\oplus (p_{XY}^Y)^*\mathcal{F}$. Then, 

$$ MTh(E\boxplus F)\simeq MTh(E)\otimes MTh(F). $$

<span style="color:red">
To be Continued
</span>

## 2.2.2 Tate motive and transfers

Suppose $X$ is a smooth scheme, and $p:X\rightarrow Spec(k)$ the structural morphism of $X$. We denote by $\tilde{L}[X]$ the complex of sheaf with transfers $Cone(p_*)[-1]$. To be precise, this is the kernel

$$ 0\rightarrow\tilde{L}[X]\rightarrow L[X]\rightarrow\mathbb{Z}\rightarrow 0. $$

If $X$ has a rational point $x$, the above triangle (complex) splits, and we obtain a canonical isomorphism $\tilde{M}(X)\simeq M(X/\{x\})$ using the notations of relative motives.

Following Voevodsky, we denote by $\mathbb{Z}(1)=\tilde{M}(\mathbb{P}_k^1)[-2]$.

<span style="color:red">
Lecture 15 of the motivic cohomology lecture tells us that
$$ Cone(M(\mathbb{P}_k^{n-1})\rightarrow M(\mathbb{P_k^n}))\simeq \wedge^nM(\mathbb{G}_m)[n]=\mathbb{Z}(n)[2n] $$
and due to the conventions above, we know that
$$ \tilde{M}(\mathbb{P}^1)\simeq M(\mathbb{P}^1/\mathbb{P}^0). $$
</span>


Such is called the Tate motive. In what follows, we take up the calculation of the Tate motif due to Suslin and Voevodsky in order to determine the action of the transpose of a finite equidimensional morphism on its cohomology.

### 2.2.4
(Proposition) The motivic complex $\mathbb{Z}(1)$ is concentrated at degree $1$ and $H^1(\mathbb{Z}(1))\simeq(\mathbb{G}_m,\bullet)$, as a sheaf on $\mathcal{L}_k$. Denote by $\epsilon_X:H^1(X,\mathbb{Z}(1))\rightarrow \mathcal{O}_X^*(X)$ the natural morphism for a smooth scheme $X$.

<span style="color:red">
Different from that lecture, $\mathbb{G}_m$ seems to stand for $\mathbb{A}^1\backslash 0$ here, instead of the punctured scheme.
</span>

For $X$ and $Y$ smooth connected schemes with function fields denoted by $E$ and $L$ respectively and $f:Y\rightarrow X$ a finite surjective morphism. Denote by $N_{L/E}$ the norm map for $L/E$. Then there is a commutative diagram

```rawlatex
\begin{tikzcd}
	{H^1(Y,\mathbb{Z}(1))} & {\mathcal{O}_Y(Y)} & {L^*} \\
	{H^1(X,\mathbb{Z}(1))} & {\mathcal{O}_X(X)} & {E^*}
	\arrow["{\epsilon(Y)}", from=1-1, to=1-2]
	\arrow["{(f^t)^*}"', from=1-1, to=2-1]
	\arrow[hook, from=1-2, to=1-3]
	\arrow["{N_{L/E}}", from=1-3, to=2-3]
	\arrow["{\epsilon(X)}", from=2-1, to=2-2]
	\arrow[hook, from=2-2, to=2-3]
\end{tikzcd}
```

proof. One deduce easily from motivic Mayer-Vetoris sequence that $\mathbb{Z}(1)\simeq M(\mathbb{G}_m/\{1\})[-1]$, or to say that $\mathbb{Z}(1)[1]$ is is a direct factor of $M(\mathbb{G}_m)$.

Denote by $h^i(C^*)$ the $i$th cohomology *presheaf* of motivic complex $C^*$. If $U$ is an open subscheme of $\mathbb{A}^1$ and $X$ is a smooth scheme, recall by definition $\Gamma(X,h^i(M(U)))=H_i^{sing}(X\times U/X)$. More about $\mathbb{Z}(1)$ is already introduced in *the* lecture.

Moreover, using the canonial morphism $\mathbb{Z}(1)[2]\simeq M(\mathbb{A}_k^1/\mathbb{G}_m)$,

<span style="color:red">
Motivic Mayer-Vetoris sequence tells us that
$$ M(\mathbb{G}_m)\rightarrow M(\mathbb{A}^1\coprod\mathbb{A}^1)\rightarrow M(\mathbb{P}^1)\rightarrow +1 $$
is exact. Retract one of the $\mathbb{A}^1$ on the middle term and split out with the right term we get
$$ M(\mathbb{G}_m)\rightarrow M(\mathbb{A}^1)\rightarrow\tilde{M}(\mathbb{P}^1)\rightarrow +1. $$
On the other hand, $\tilde{M}(\mathbb{P}^1)$ is equal to $\mathbb{Z}(1)[2]$, so we have $M(\mathbb{A}^1/\mathbb{G}_m)\simeq\mathbb{Z}(1)[2]$. Here I think the author just made a mistake.
</span>

one obtain a short split exact sequence, namely

```rawlatex
\begin{tikzcd}
	0 & {\Gamma(X,h^1(\mathbb{Z}(1)))} & {H_0^{sing}(X\times\mathbb{G}_m/X)} & {H_0^{sing}(X\times\mathbb{A}^1/X)} & 0
	\arrow[from=1-1, to=1-2]
	\arrow[from=1-2, to=1-3]
	\arrow["{(1)}"', from=1-3, to=1-4]
	\arrow[from=1-4, to=1-5]
\end{tikzcd}
```

<span style="color:red">
Well this is kind of non-obvious...Note that $h^i$ is $i$th cohomology *presheaf* so taking global section is exact. The real problem is we're taking cohomology presheaves on triangles in motives. Does that make any sense? Maybe we should treat the isomorphisms in the category of complexes of presheaves...
</span>

Moreover, according to the aformentioned citiation, for any open subscheme $U\subset\mathbb{A}^1$, there's an isomorphism $\epsilon_{X,U}:H_0^{sing}(X\times U/X)\rightarrow Pic(X\times\mathbb{P}_k^1, X\times (\mathbb{P}_k^1-U))$. Such an isomorphism is constructed in the following process: let $\alpha$ be a cycle of $X\times U$ that is finite equidimensional over $X$, it 
further defines a cycle of $X\times\mathbb{P}^1$, which happenes to be an invertible sheaf on $X\times\mathbb{P}^1$ 
(citiation needs here). Since it's supported on $X\times U$, it's canonically trivalized over $X\times(\mathbb{P}^1-U)$ and therefore defines a class in the relative picard group.

The morphism (1) is induced from the obvious open immersion. There is then a corresponding morphism

$$ (1)':Pic(\mathbb{P}_X^1,X_1\coprod X_\infty)\rightarrow Pic(\mathbb{P}_X^1,X_\infty) $$ 

sending an invertible sheaf with a trivalization on $X_1\coprod X_\infty$ to which is then trivalized on $X_\infty$.

Then, according to the long exact sequence of relative picard groups, the kernel of the preceding morphism is isomorphic to $\mathbb{G}_m(X_\infty)$. The isomorphism is constructed in the following: 

<span style="color:red">
$$ 0\rightarrow $$
...
</span>



We then deduce an isomorphism $\tau_X:\Gamma(X,h^1(\mathbb{Z}(1)))\rightarrow\mathbb{G}_m(X)$. This shows that $h^1(\mathbb{Z}(1))$ is the first cohomological *sheaf* of $\mathbb{Z}(1)$. According to the description, the morphism $\epsilon_{X,U}$ is compatible with pullback over $X$, which is then concluded natural in $X$. 

Suppose $f:Y\rightarrow X$ is finite equidimensional, the morphism induced from the transpose of $X$, quotient by the group $c(X,U)$, corredpond to the direct image morphism as stated in 1.1.2. It follows from the definition of $\epsilon_{X,U}$ that this morphism corresponds to the direct image morphism on the relative Picard group. 

...

### 2.2.5
(Remark) As what was demonstrated, we have thus obtained the canonical isomorphism $MTh(\mathbb{A}_k^1)=M(\mathbb{A}^1/\mathbb{G}_m)=\mathbb{Z}(1)[2]$. According to the preceding proposition, The endomorphism of Tate motive is 

$$ End_{DM_-^{eff}(k)}(\mathbb{Z}(1))=End_{DM_-^{eff}(k)}(MTh(\mathbb{A}_k^1))=\mathbb{Z}. $$

The isomorphism can be described simply: for a morphism between closed paires $(f,g):(\mathbb{A}^1,\{0\})\rightarrow (\mathbb{A}^1,\{0\})$, the endomorphism $MTh(f,g)$ is then decided by the degree of $f$.

We will always view $\mathbb{G}_m$ as a sheaf with transfers with the structure arising from the preceding proposition. Note that we obtain therefore $\mathbb{Z}(1)=\mathbb{G}_m[-1]$. Following [MV99], the sheaf $\mathbb{G}_m$ with transfers is then named *Tate sphere*.

### 2.2.6
For every smooth scheme $X$, there's a canonical isomorphism
$$ \tau_X:Hom_{DM_-^{eff}(k)}(M(X),\mathbb{Z}(1)[2])\rightarrow Pic(X), $$
which is natural with respect to scheme $X$. If $f:Y\rightarrow X$ is a finite equidimensional morphism, the following diagram commutes, namely

```rawlatex
\begin{tikzcd}
	{Hom_{DM_-^{eff}}(Y,\mathbb{Z}(1)[2])} & {Pic(Y)} \\
	{Hom_{DM_-^{eff}}(X,\mathbb{Z}(1)[2])} & {Pic(X)}
	\arrow["{\tau_Y}", from=1-1, to=1-2]
	\arrow["{(f^t)^*}"', from=1-1, to=2-1]
	\arrow["{f_*}"', from=1-2, to=2-2]
	\arrow["{\tau_X}", from=2-1, to=2-2]
\end{tikzcd}
```

where $f_*$ is the norm for line bundle.

<span style="color:red">
Norm map of picard group? In smooth case this is just proper pushforward of chow group of codimension $1$. On the other hand, see [0BCX](https://stacks.math.columbia.edu/tag/0BCX). [0BD3](https://stacks.math.columbia.edu/tag/0BD3) regards that we always have a norm map here.
</span>

proof. As in [Voe00b,3.2.3] we obtain a canonical isomorphism

$$ Hom_{DM_-^{eff}}(X,\mathbb{Z}(1)[2])\simeq Ext_{\mathscr{N}_k^{tr}}^1(L[X],\mathbb{G}_m) $$

<span style="color:red">
Why omit $A^1$-localization? This in in Lecture proposition 14.16. Well, take the Nisnevich edition.
</span>

that is nautral with respect to $X$ and finite correspondances. According to [Deg07,2.9] and the fact that the Zariski and Nisnevich cohomology of the sheaf $\mathbb{G}_m$ coincide,

<span style="color:red">
Really? I'll just believe this. Well this should be interpreted that on a smooth scheme $X$ Nisnevich cohomology coincides with Zariski cohomology. I'll find a reference later.
</span>

we obtain an isomorphism

$$ Ext_{\mathscr{N}_k^{tr}}^1(L[X],\mathbb{G}_m)\simeq H_{Zar}^1(X,\mathbb{G}_m).  $$

These two isomorphisms give the statement of isomorphism $\tau_X$.

To verify the second statement, we introduce the following contruction: For $X$ a smooth scheme and $\mathcal{U}=(U_i)_{i\in I}$ a finite family of open cover of $X$, we denote by $L[\mathcal{U}]$ the complex of sheaf with transfers following Cech resolution:

$$ L[\mathcal{U}]^n=\oplus_{\alpha\in I^{n+1}}L[U_{\alpha_0}\cap\cdots\cap U_{\alpha_n}], $$

with differentials given by the usual alternating sum. For any $i\in\mathbb{N}$, we define 

SKIP THIS PART AND GO BACK LATER


We conclude this paragraph with the definition of the motivic Chern class which follows from the previous calculation.

### 2.2.7
(Definition) We denote by

$$ \mathfrak{c}_1:Pic(\cdot)\rightarrow Hom_{DM_-^{eff}(k)}(M(\cdot),\mathbb{Z}(1)[2]) $$

the natural isomorphism of presheaves over $\mathscr{L}_k$ which is defined in the preceding corollary. If $X$ is a smooth schme, and $\lambda\in Pic(X)$ the class of an invertible fibre over $X$, we denote by

$$ \mathfrak{c}_1(\lambda):M(X)\rightarrow\mathbb{Z}(1)[2] $$

the image of that natural transformation when substituting $X$ and $\lambda$, and it's called the motivic Chern class of $\lambda$.

As a result of the preceding study we have the following relations. For $X$ and $Y$ smooth and $\lambda$ a class of invertible sheaves on $X$, 

### 2.2.8
For any morphism (not necessarily flat!) $f:Y\rightarrow X$ we have $\mathfrak{c}_1(f^*\lambda)=\mathfrak{c}_1(\lambda)\circ f_*$.

### 2.2.9
For $f:X\rightarrow Y$ finite equidimensional we have $\mathfrak{c}_1(f_*\lambda)=\mathfrak{c}_1(\lambda)\circ f^*$.

## 2.2.3 Motive of a projective bundle

Following V.Voevodsky, we associate the following morphism to every projective bundle:

### 2.2.10
(Definition) Consider $X$ a smooth scheme, and $E/X$ a vector bundle over $X$ of rank $n$. Denote by $\mathbb{P}(E)$ the induced projective space by $E$, $\lambda_E$ the canonical bundle of $\mathbb{P}(E)$ and $p:\mathbb{P}(E)\rightarrow X$ the canonical projection.

<span style="color:red">
What is this $\mathbb{P}(E)$? The Fulton-style one or the modern one?
</span>

For any natural integer $r$, we define the following morphism

$\mathfrak{l}_r(E)=\mathfrak{c}_1(\lambda_E)^r\boxtimes_{\mathbb{P}(E)}p_*:M(\mathbb{P}(E))\rightarrow M(X)(r)[2r]$

where $\mathcal{c}_1(\lambda_E)^r$ is the $r$-fold cup product of $\mathcal{c}_1(\lambda_E)$ defined in 1.2.3.

We will also set $\mathcal{l}(E)=\sum_{r=0}^{n-1}\mathcal{l}_r(E):M(\mathbb{P}(e))\rightarrow\oplus M(X)(r)[2r]$.

### 2.2.11
(Lemma) Suppose $X$ is a smooth scheme and $E/X$ a vector bundle.

1. Suppose $F/X$ a vector bundle an $\sigma:E\rightarrow F$ an isomorphism of bundles over $X$. Furthermore, denote by $\bar{\sigma}:\mathbb{P}(E)\rightarrow\mathbb{P}(F)$ the induced isomorphism by $\sigma$, then $\mathfrak{l}\circ\bar{\sigma}_*=\mathfrak{l}(F)$.

<span style="color:red">
This suggests that $\mathbb{P}(\cdot)$ is following Fulton's notation with sections locally denoting supspaces of that bundle. Then the canonical bundle $\lambda_E$ is $\mathcal{O}(1)$.
</span>

2. Suppose $Y$ is a smooth scheme and $f:Y\rightarrow X$ a morphism between schemes. Let $E_Y=E\times_XY$ and denote by $g:\mathbb{P}(E_Y)\rightarrow\mathbb{P}(E)$ the morphism induced by $f$. Then for any $r\in\mathbb{N}$, $\mathfrak{l}_r(E)\circ g_*=f_*(r)[2r]\circ\mathfrak{l}_r(E_Y)$.

3. Consider the hypothesis from the preceding statements and further require that $f$ is finite equidimensional. Then $\mathfrak{l}_r(E_Y)\circ g^*=f^*(r)[2r]\circ\mathfrak{l}_r(E)$.

Proof. For the first two statements, we just need to apply formula 2.2.8 for the compatibility of Chern classes under pullback, and the second point of 1.2.4 for the cup product.

For the last assertion, we denote by $\lambda$ (resp. $\lambda_Y$) the canonical line bundle on $\mathbb{P}(E)$ (resp. $\mathbb{P}(E_Y)$), and $\Delta$ (resp. $\Delta'$) the diagonal morphism of $\mathbb{P}(E)$ (resp. $\mathbb{P}(E_Y)$).

We have the following diagram commutes,

```rawlatex
\begin{tikzcd}
	{M(\mathbb{P}(E))} && {M(\mathbb{P}(E_Y))} \\
	{M(\mathbb{P}(E))\otimes M(\mathbb{P}(E))} && {M(\mathbb{P}(E_Y))\otimes M(\mathbb{P}(E_Y))} \\
	& {M(\mathbb{P}(E))\otimes M(\mathbb{P}(E_Y))} \\
	{M(X)(r)[2r]} && {M(Y)(r)[2r]} \\
	& {M(Y)(r)[2r]}
	\arrow["{g^*}", from=1-1, to=1-3]
	\arrow["{\Delta_*}"', from=1-1, to=2-1]
	\arrow["{\Delta_*'}", from=1-3, to=2-3]
	\arrow["{1\otimes g_*}", from=2-1, to=3-2]
	\arrow["{\mathfrak{c}(\lambda)_1^r\otimes p_*}", from=2-1, to=4-1]
	\arrow["{g_*\otimes 1}"', from=2-3, to=3-2]
	\arrow["{\mathfrak{c}(\lambda_Y)_1^r\otimes p_{Y*}}", from=2-3, to=4-3]
	\arrow["{\mathfrak{c}(\lambda)_1^r\otimes p_{Y*}}"{description}, from=3-2, to=5-2]
	\arrow["{1\otimes f^*}"{description}, from=4-1, to=5-2]
	\arrow[shift left, no head, from=4-3, to=5-2]
	\arrow[shift right, no head, from=4-3, to=5-2]
\end{tikzcd}
```

The upper polygen commutes following from 1.2.3, the lower left commuts from 1.1.4 and the lower right from 2.2.8.

The motivation for introducing the preceding definition is the following proposition.

### 2.2.12 
[Voevodsky] Suppose $X$ is a smooth algebraic scheme and $E/X$ a vector bundle with rank $n>0$. Then the morphism $\mathfrak{l}(E):M(\mathbb{P}(E))\rightarrow\oplus_{r=0}^{n-1}M(X)(r)[2r]$ following definition 2.2.10 is an isomorphism.

### 2.2.13
(Remark) Following the classcal methods of cohomology, we can deduce motivic Chern classes - which extend the classes of the form $\mathfrak{c}_1$ defined in 2.2.7. From lemma 2.2.11, we deduce the standard functoriality of these Chern classes. However, we will not use them.

## 2.2.4 Thom isomorphism

Let $X$ be a smooth scheme and $E/X$ a vector bundle of rank $n$. In the following, we explain the Thom motive of $E/X$.

Let $\hat{E}=E\times_X\mathbb{A}_X^1$ equipped with the structure of vector bundle over $X$. 

<span style="color:red">
Well this is just $E\oplus\mathbb{1}$.
</span>

Then, we have the isomorphisms:

$$ 
\begin{aligned}
  MTh(E)&=M(E,X)\simeq M(\mathbb{P}(\hat{E}),X) \\
  &= M(\mathbb{P}(\hat{E})/\mathbb{P}(\hat{E})-X)\simeq M(\mathbb{P}(\hat{E})/\mathbb{P}(E)).
\end{aligned}
$$

The first isomorphism is induced by the open immersion $E\rightarrow\mathbb{P}(\hat{E})$ according to the excision property of the Nisnevich topology (cf. [DeÂg04, 2.3]) and the latter one is because $\mathbb{P}(\hat{E})-X$ is a vector bundle over $\mathbb{P}(E)$.

We deduce from the isomorphisms a canonical triangle

$$ M(\mathbb{P}(E))\xrightarrow{i_*}M(\mathbb{P}(\hat{E}))\xrightarrow{\pi_E} MTh(E)\rightarrow +1 $$

where the morphism $i$ is the closed immersion corresponding to the hyperplane at infinity. 

However, using the second point in lemma 2.2.11, the morphism $i_*$ corresponds through the isomorphisms $\mathfrak{l}(E)$ and $\mathfrak{l}(\hat{E})$ to the canonical injection of the first $n$ factors of $\oplus_{r=0}^nM(X)(r)[2r]$. This results in the above triangle being split, and the following morphism

$$ M(X)(n)[2n]\hookrightarrow\bigoplus_{r=0}^nM(X)(r)[2r]\xrightarrow{\mathfrak{l}(\hat{E})^{-1}}M(\mathbb{P}(\hat{E}))\xrightarrow{\pi_E}MTh(E) $$

is an isomorphism.

### 2.2.14
(Definition) With the notations and assumptions mentioned above, we call it the Thom isomorphism and denote by $\theta(E)$ the inverse of the above isomorphism.

The detailed study of the preceding Tate motif and the motivic Chern class of order $1$ is justified in so far as we prove the following functoriality of the Thom isomorphism:

### 2.2.15
(Lemma) Let $X$ be a smooth scheme and $E/X$ a vector bundle of rank $n$.

1. Let $F/X$ be another vector bundle over $X$ and $\sigma:E\rightarrow F$ an isomorphism of fibres over $X$. Then, $\theta(E)\circ$


# 3. Definition

## 3.1 Pro-objects

For $\mathscr{T}$ a category, recall that a pro-object of $\mathscr{T}$ is a functor $\mathcal{I}\rightarrow\mathscr{T}$, $X\mapsto X_i$ for $\mathcal{I}$ an essentially small and cofiltered category.

We will use the suggestive notation

$$ X_\bullet=\lim_{i\in\mathcal{I}}^\sim X_i $$

for such pro-objects. This notation is justified since $X$ is the projective limit in the category of pro-objects of the $X_i$ seen as constant pro-objects. The tilde is used to differentiate this formal projective limit from the projective limit computed in $T$. 

A morphism of pro-objects $\lim_{i\in\mathcal{I}}^\sim X_i\rightarrow\lim_{j\in\mathcal{J}}^\sim Y_j$ is given by a functor $F:\mathcal{J}\rightarrow\mathcal{I}$ and a natural transformation $X_{F(\bullet)}\rightarrow Y_\bullet$. The morphisms are subject to an equivalance relation which means that

$$ Hom_{pro-\mathscr{T}}(X_\bullet,Y_\bullet)=\lim_{j\in\mathcal{J}} colim_{i\in\mathcal{I}^{op}}Hom_\mathscr{T}(X_i,Y_j). $$

We say pro-$\mathscr{T}$ is the category of pro-objects of $\mathscr{T}$.

If $\mathscr{T}$ is abelian then pro-$\mathscr{T}$ is naturally an abelian category.

If $\mathscr{T}$ is trangulated, pro-$\mathscr{T}$ generally does not posses a trangulated structure unless $\mathscr{T}$ is semi-simple. The category pro-$\mathscr{T}$ in this case is only additive, equipped with an endofunctor induced from the suspension functor of $\mathscr{T}$. If $X_\bullet\rightarrow Y_\bullet\rightarrow Z_\bullet\rightarrow X_\bullet[1]$ is a sequence of morphisms in pro-$\mathscr{T}$, we say it's a pro-distinguished triangle if it is isomorphic to the formal projective limit of a filtering system of distinguished triangles in $\mathscr{T}$.

Finally note that if $\mathscr{T}$ is a symmetric monoidal category, there is a unique structure of symmetric monoidal of pro-$\mathscr{T}$ since tensor product commutes with formal (cofiltered) projective limits.

## 3.2 Models and essentially smooth algebras

Recall the classical definitions:

### 3.2.1
(Definition) For $\mathcal{O}$ a (local) $k$-algebra. We will say that $\mathcal{O}$ is essentially of finite type (resp. essentially smooth) if there is a $k$-algebra $A$ being of finite type (resp. smooth), a prime ideal of $A$  and an isomorphism $\mathcal{O}\simeq A_x$.

### 3.2.2
(remark) Suppose $k$ being perfect, a $k$-algebra is essentially smooth if and only if it's regular and essentially of finite type. 

<span style="color:red">
This is not so trivial. We have to prove that such an algebra is a local for some regular scheme of finite type over $k$.  In fact, over perfect field being regular is equivalance to being smooth, so we just need to find a regular open neighborhood of our specified point $x$ viewed as a prime on a $k$-algebra of finite type. Using the language introduced in [07P6](https://stacks.math.columbia.edu/tag/07P6) we know that every scheme of finite type over a perfect field is of type J-1 since such field is J-2, see especially [07PB](https://stacks.math.columbia.edu/tag/07PB) (4). Then the situation is clear.
</span>

### 3.2.3
(Example) An essnetially smooth $k$-algebra of dimension $0$ is a function field. An essentially smooth $k$-algebra of dimension $1$ is a DVR being *essentially of finite type* over $k$. If $E$ is a function field and $\nu$ a valuation on $E$, we say $\nu$ is *geometric* is it is of rank $1$ and its valuation ring is essentially of finite type over $k$. This implies that v is a discrete valuation.

More generally, essentially smooth rings correspond to the local rings of smooth schemes. In this spirit, we adopt the following definition:

### 3.2.4
(Definition) If $\mathcal{O}$ is an essentially smooth $k$-algebra. A model of $\mathcal{O}$ is a couple $(X,x)$ consisting of a smooth scheme $X/k$ and a morphism $x:Spec{O}\rightarrow X$ such that, if we identify $x$ with the image of the closed point of $Spec(\mathcal{O})$ in $X$, the induced morphism $x^\sharp:\mathcal{O}_{X,x}\rightarrow\mathcal{O}$ is an isomorphism.

We denote by $\mathcal{M}^{lis}(\mathcal{O}/k)$ the ordered set of inclusion of $k$-sub algebras $A\subset\mathcal{O}$ such that $spec(A)$, with the evident $\mathcal{O}$-point, is a model of $\mathcal{O}$. 

Suppose $k$ is perfect, the set $\mathcal{M}^{lis}(\mathcal{O}/k)$ is *non-empty* and *filtered* for the order induced by inclusion.

<span style="color:red">
What is being perfect doing here? It's obviously non-empty, but being filtered is not straightforward. 
</span>

### 3.2.5
(Definition) We condifer the pro-objects of smooth schemes as follows:

1. Let $\mathcal{O}$ be an essentially smooth $k$-algebra. We associate to which a pro-scheme

$$ (\mathcal{O})=\lim_{A\in\mathcal{M}^{lis}(\mathcal{O}/k)}^\sim spec(A). $$

2. For $X$ a smooth scheme and a point $x$ on $X$, and $x$ a point on $X$, we define the local of $X$ at $x$ as the pro-scheme 

$$ X_x=\lim_{U\subset X,x\in U}^\sim U $$

where $U$ traverses the cofiltered ordered set of open neighborhoods of $x$ in $X$.

If $F$ is a presheaf over $\mathscr{L}_k$, and $\mathcal{X}=(X_i)_{i\in\mathcal{I}}$ a pro-object of smooth schemes, we define

$$ \hat{F}(\mathcal{X})=\lim_{i\in\mathcal{I}^{op}}F(X_i). $$

This is the common extension of presheaves to pro-objects.

### 3.2.6
The pro-objects of type $(\mathcal{A})$ (resp. $X_x$) for an essentially smooth $k$-algebra $\mathcal{A}$ (resp. a pointed smooth scheme $(X,x)$) are *essentially affine* over $k$ in the sense of [EGA4.8.13.4]. Furthermore $spec(\mathcal{A})$ (resp. $spec(\mathcal{O}_{X,z})$) is a projective limit of $(\mathcal{A})$ (resp. $X_x$). We deduce from [EGA4.8.13.2] the following assertions

1. Suppose $\mathcal{A}$ and $\mathcal{B}$ are essentially smooth $k$-algebras. Then there exist a canonical isomorphism $Hom_{pro-\mathscr{L}_k}((\mathcal{B}),(\mathcal{A}))\simeq Hom_k(\mathcal{A},\mathcal{B})$.

2. Suppose $\mathcal{O}$ an essentially smooth $k$-algebra and $(X,x)$ a model of $\mathcal{O}$. Then the morphism $x$ induces a canonical isomorphism $(\mathcal{O})\rightarrow X_x$.

### 3.2.7 
(Remark) If $\mathcal{O}$ is an essentially smooth $k$ algebra, according to the common terminology that the functor $F\mapsto\hat{F}(\mathcal{O})$ is said to be *pro-represented* by $(\mathcal{O})$ - seen as a pro-object of representable sheaves. According to the second property above, it is a fiber functor for the Zariski topology on $\mathscr{L}_k$. Furthermore, since for evert smooth scheme $X$, the family formed by the fiber functors associated with essentially smooth $k$-algebras is conservative for the Zariski topology. Following [SGA4], we call by *specialisation morphism* any natural transformation between two fiber functors; this amounts to considering morphisms of the pro-objects that pro-represent them.

## 3.3 Definitions and fundemental properties

### 3.3.1
(Definition) Suppose $E$ is a function field and $n\in\mathbb{Z}$ is an integer.

We define the *generic potives* of $E$ of rank $n$, noted by $M_{gm}(E)\{n\}$, to be the pro-object in $DM_{gm}(k)$

$$ M_{gm}(E)\{n\}=\lim_{A\in\mathcal{M}^{lis}(E/k)}^\sim M_{gm}(Spec(A))\{n\}. $$

If $n\geq 0$, we say that the generic motive is *effective*.

We denote by $DM_{gm}^{(0)}(k)$ (resp. DM_{gm}^{eff,(0)}(k)) the subcategory of pro-$DM_{gm}(k)$ (resp. eff) formed by objects like $M_{gm}(E)\{n\}$ with $E$ a function field, and $n$ an integer (resp. natural integer). We then say this is the category of (effective) relative motives.

According to Voevodsky's simplification theorem [Voe02.4.10], the canonical functor

$$ DM_{gm}^{eff,(0)}(k)\rightarrow DM_{gm}^{(0)}(k) $$

is fully faithful.

## 3.4 Links with the motivic t-structure

This subsuction aims to clarify the interpretation of generic motives as points for homotopy sheaves.

If $\mathcal{M}$ is a motivic complex, we denote by $\underline{H}^p(\mathcal{M})$ the $p$th cohomology group calculated in the category of sheaves with transfers. Recall that by definition such sheaf is homotopical invariant. The category $DM_-^{eff}(k)$ carries a t-structure, called *homotopical*, such that the functor

$$ \underline{H}^0:DM_-^{eff}(k)\rightarrow H\mathscr{N}_k^{tr} $$

is the associated cohomology functor. The category $H\mathscr{N}_k^{tr}$ is the heart of the homotopical t-structure of $DM_-^{eff}(k)$.

### 3.4.1
(Proposition) The functor

$$
\begin{aligned}
  H\mathscr{N}_k^{tr}&\rightarrow Ab^{\mathscr{E}_k} \\
  F&\mapsto (E/k\mapsto\hat{F}(E))
\end{aligned}
$$

is exact, conservative (reflects isomorphisms) and commutes with inductive limits.

proof. Let $E$ be a function field. Since $E$ is a henselian local ring, the pro-object $(E)$ pro-represents a fibre functor in Nisnevich topology. The assertion of exactness and commuting with colimits follows from (Well all from Deg07, pass and read it later)

<span style="color:red">
Fibre functor? In this context, fibre functor refers to a functor representing a "stalk", like the normal one does in etale site or some other topos.
</span>

Following Vowvodsky, we introduct the following construction

### 3.4.2
(Definition) Let $F$ be a homotopy sheaf (?) and $X$ a smooth scheme. We define an abelian group F_{-1}(X) suitting in exact sequence

$$ 0\rightarrow F(\mathbb{A}^1\times X)\xrightarrow{F(j)}F(\mathbb{G}_m\times X)\rightarrow F_{-1}(X)\rightarrow 0 $$

where $j$ follows from the obvious canonical open immersion.

Thus we have associated to $F$ a sheaf $F_{-1}$ for the Nisnevich topology on $\mathscr{L}_k$ since the short exact sequence involved in the definition above is split. Of course, it is homotopy invariant and equipped with transfers. We then obtain an endofunctor of $H\mathscr{N}_k^{tr}$ which possessed the remarkable property

### 3.4.3
(Proposition) The endofunctor $F\mapsto F_{-1}$ of $H\mathscr{N}_k^{tr}$ is exact.

proof. We fix a exact sequence $0\rightarrow F\rightarrow G\rightarrow H\rightarrow 0$ of homotopy (????) sheaves. Using 3.4.1, to prove the sequence $\cdots_{-1}$ is exact just fix a dunction field $E$ and see that 

$$ 0\rightarrow F_{-1}(E)\rightarrow G_{-1}(E)\rightarrow H_{-1}(E)\rightarrow 0 $$

is finite (WTF, should be exact). This is likely a variant of H90 and see [Deg07.4.4.10].

We recall the fully faiyhful functor $\iota:DM_{gm}^{eff}(k)\rightarrow DM_-^{eff}(k)$. 

### 3.4.4
(Proposition) Let $E$ be a function field, and $\mathcal{M}$ a motivic complex. Then, for any integer $n\geq 0$, there is a canonical isomorphism 

$$ Hom_{pro-DM_-^{eff}(k)}(M_{gm}(E)\{n\},\mathcal{M})\simeq\underline{H}^0(\mathcal{M})_{-n}(E). $$ 

Proof. The case $n=0$ follows from the fact that $Hom(\cdot,\mathcal{M})$ commutes with colimits and the theory of $A^1$ local objects/resolutions. For $n>0$, we have (by tensor-hom adjunction)

$$ Hom(\mathcal{M}_{gm}(E),\mathcal{M})=\underline{H}^0(\underline{Hom}(\mathbb{Z}\{p\},\mathcal{M}))(E). $$

### 3.4.5
(Lemma) If $F$ is a homotopy sheaf. Then there is a canonical isomorphism $\underline{Hom}(\mathbb{Z}\{1\},F)\simeq F_{-1}$.

Proof. Just believe this, go on

Since $\mathbb{Z}\{1\}$ is concentrated at degree $0$, the functor $\underline{Hom}(\mathbb{Z}\{1\},\cdot)$ us e-exact on the left for the homotopical t-structure. Since, according to the previous lemma, *it induces a functor exact on the homotopy core of $DM_{eff}(k)$, we deduce that it is even t-exact*, which allows us to conclude.

### 3.4.6
For $E$ is a function field and $n\in\mathbb{N}$ a natural integer, the functor

$$ H\mathscr{N}_k^{tr}\rightarrow Ab,F\mapsto Hom_{pro-DM_{gm}^{eff}(k)}(M_{gm}(E)\{n\},F)=\hat{F}_{-n}(E) $$

is then exact. Furthermore, it commutes with arbitrary direct sums and therefore defines a "fiber functor" in $H\mathscr{N}_k^{tr}$ by extending the terminology of [SGA4] outside the framework of topoi.

Furthermore, it will be noted that the family formed by these points is conservative, according to Proposition 3.4.1.

### 3.4.7
(Corollary) The functor


# 4.A recall of cycle modules

## 4.1 Cycle premodules

We can describe cycle modules as functors valued in abelian groups over a category (see also [Deg06, 1.1]) that we describe now.

Notation: $\tilde{\mathscr{E}}_k$ for the category of objects like $(E,n)$ such that $E$ is a function field and $n\in\mathbb{Z}$ an integer. The morphism of $\tilde{\mathscr{E}}_k$ are defined throught the following generators and relations - below, we call a valued field any function field equipped with a geometric valuation (see the notations at the beginning of the article).

### Generators

- (D1) $\phi_*:(E,n)\rightarrow (L,n)$ for $\phi:E\rightarrow L$, $n\in\mathbb{Z}$.
- (D2) $\phi^*$ the inverse direction with $\phi$ finite.
- (D3) $\gamma_x:(E,n)\rightarrow (E,n+r)$ for $x\in K_r^M(E)$.
- (D4) $\partial_\nu:(E,n)\rightarrow (\kappa(\nu),n-1)$ for $(E,\nu)$ a valuation field.

### Relations

- (R_0) $\gamma_x\circ\gamma_y=\gamma_{x\cdot y}$.
- (R1a&R1b) $\bullet^*$ and $\bullet_*$ are functorial.
- (R1c) Let $\phi:K\rightarrow E$ and $\psi:K\rightarrow L$ be finite. For $z\in spec(E\otimes_KL)$ 

<span style="color:red">
Okay I'll just take this 😅.
</span>

## 4.2 Cycle modules

In order to construct, using a pre-cycle module, a complex of the *Gersten complex type*, we define the differentials of this complex according to Rost. Rost's theory requires considering $k$-schemes that are not necessarily of finite type. Therefore, until the end of these reminders, we change the convention of the article: all considered schemes are assumed to be equipped with a structure of a $k$-scheme essentially of finite type. 

### 4.2.1
(Definition) Let $M$ be a pre cycle module, and $X$ a scheme. 

1. For every point $x$ on $X$ we set $M(x)=M(\kappa(x))$.
2. Suppose $X$ is normal, $\eta$ the generic point and $z$ a point at codim $1$. Then $z$ correspond to a discrete valuation $\nu_z$ on the function field $\kappa(\eta)$ of $X$. Follwoing axiom $D4$, we define

$$ \partial_z^X=\partial_{\nu_z}:M(\eta)\rightarrow M(z). $$

3. Let $x$ and $y$ be points of $X$. We denote by $Z$ the reduced closure at $x$ in $X$, and $\tilde{Z}$ the normalization on $Z$; the canonical morphism $f:\tilde{Z}\rightarrow Z$ is *finite*.

<span style="color:red">
See [035R](https://stacks.math.columbia.edu/tag/035R) and [035S](https://stacks.math.columbia.edu/tag/035S). 
</span>

Suppose that $y\in Z^{(1)}$ and let $\tilde{Z}_y$ denote the fibre of $f$ at $y$. Then let point $z\in\tilde{Z}_y$ be a point at codimension $1$ (should be $0$!). For such a point $z$, we denote by $\phi_z:\kappa(y)\rightarrow\kappa(z)$ the morphism induced by $f$ on the residue fields, which is a finite morphism. 

Then we set

$$
\begin{aligned}
  \partial_y^x &=\sum_{z\in\tilde{Z}_y}\phi_z^*\circ\partial_z^{\tilde{Z}}\ for\ y\in Z^{(1)} \\
  &= 0\ otherwise
\end{aligned}
$$

a map from $M(x)$ to $M(y)$.

<span style="color:red">
I NEED EAGERLY SOME EXAMPLES HERE!!!
</span>

Using these notations, we can introduce the following two axioms on pre-cycle modules.

### 4.2.2
(Definition) For $M$ a cycle premodule. We say $M$ is a cycle module if

1. (FD) For every normal scheme $X$ with generic point $\eta$, and for any $\rho\in M(\eta)$, the set $\{x\in X^{(1)}|\partial_x^\eta(\rho)\not=0\}$ is finite.

2. (C) For any local integeral scheme $X$ of dimension $2$ with generic point $\eta$ and a closed point $x_0$, we have

$$ \sum_{x\in X^{(1)}}\partial_{x_0}^x\circ\partial_x^\eta=0. $$

As announced, we finally obtain the (co)cycle complex with coefficients in $M$.

### 4.2.3
(Definition) Let $M$ be a cycle module, and $X$ is a scheme. For any integer $p\in\mathbb{N}$, we set

$$ C^p(X;M)=\bigoplus_{x\in X^{(p)}}M(x) $$

and a morphism

$$ d_{X,M}^p=\sum_{(x,y)\in X^{(p)}\times X^{(p+1)}}\partial_y^x. $$

According to the axioms of cycle modules, $C^*(X;M)$ with such morphisms is a complex. We name the $p$th cohomological grouop of which as the *Chow groups with coefficients $M$*, denoted by $A^p(X;M)$.

Note that for any cycle premodule $M$ and any integral scheme $X$ with generic point $\eta$, the group $A^0(X;M)=\cap_{x\in X^{(1)}}ker(\partial_x^\eta)$ is well defined. We will need the following characterization, due to M. Rost (cf. loc. cit. 2.3), of cycle modules over a perfect field.

### 4.2.4
(Theorem)[Rost] Let $M$ be a cycle premodule. Then $M$ is a cycle module iff the following conditions are satisfied

1. (FDL) For any function field $L$ and for any $\rho\in L(t)$, the set {$\nu$ a geometric valuation on $L(t)/L$|$\partial_\nu(\rho)\not=0$} is finite.

2. (WR) For any function field $L$, denote by $\partial_\infty$ the residue associated to the inifnite valuation of $L(t)$,

$$ \partial_\infty(A^0(\mathbb{A}_L^1);M)=0. $$

Reference on [Ros96,(2.3)].

### 4.2.5 
To verify the axioms of a cycle module, we will not directly use the previous theorem, but we will rely on the following property:

Let $M$ be a cycle premodule which satisfies (FDL). We inreoduce the following property: 

- (H) For any function field $L$, denote by $\phi:L\rightarrow L(t)$ the canonical inclusion, the sequence

$$ 0\rightarrow M(L)\xrightarrow{\phi_*} M(L(t))\xrightarrow{d_{\mathbb{A}_L^1,M}^0}\bigoplus_{x\in\mathbb{A}_L^{1,(1)}}M(\kappa(x))\rightarrow 0 $$

is exact. 

Note that property (FDL) exactly means that the morphism $d_{\mathbb{A}_L^1,M)}^0$ is well-defined. Furthermore, (WR) is immediately a consequence of (H) according to formula R3c. Therefore, a pre-cycle module satisfying (FDL) and (H) is a cycle module.



# 5 Morphisms and relations

## 5.1 The canonical functor $M^{(0)}$

Strikingly, it appears that the category $\tilde{\mathscr{E}}_k$ allows us to describe morphisms of generic motives by generators and relations, as shown by the following theorem:

### 5.1.1
(Theorem) There is a canonical functor

$$ M^{(0)}:(\tilde{\mathscr{E}}_k)^{op}\rightarrow DM_{gm}^{(0)}(k) $$

sending an object $(E,n)$ in $\tilde{\mathscr{E}}_k$ to the associated generic motive $M_{gm}(E)\{-n\}$.

<span style="color:red">
THIS iS STUNNING!!
</span>

Proof: It's a matter of correctly translating (D1) to (D4) and verification of the properties. Note that $\mathbb{Z}\{1\}$ is invertible for the tensor product of $DM_{gm}(k)$, it suffices to define the morphism and D* for a given twist on the source, then do proper products with Tate motive.

- (D1) For $\phi:E\rightarrow L$ a morphism between function fields, it then correspondence according to proposition 3.2.6 to a unique morphism $(\phi):(L)\rightarrow (E)$ which incudes the morphism $\phi^\sharp:M_{gm}(L)\rightarrow M_{gm}(E)$. The relation R1a is immediate.

Note that the same isomorphism obtained by 3.2.6 shows the existence of respective models $(X,x)$ and $(Y,y)$ of $E/k$ and $L/k$ and the dominant morphism $f:Y\rightarrow X$ such that the diagram () commutes. In this situation we say that $f:(Y,y)\rightarrow (X,x)$ is a model of $\phi$.

The general method to construct the morphisms of the data D2, D3, D4 is to build them on models of the considered function fields, to verify that this construction localizes at generic points, and to demonstrate the independence of the definition from the chosen model. The complete proof extends over the rest of this subsection. The table of contents specifies where each data and each relation is proved.

### 5.1.2
(Remark) Let's not forget that the functor to be constructed in the preceding proposition is contravariant. It is to clarify the situation that we have chosen to denote by a symbol \# as superscript or subscript, the morphisms corresponding to the data D1 and D2.

## 5.2 Tranfers (D2,R1b,R1c)

### 5.2.1 Generic situation
(Lemma) For $f:X\rightarrow Y$ an equidimensional morphism. Then for any open dense $U\subset X$, the open $f^{-1}(Y-f(X-U))$ is dense and included in $U$.

### 5.2.2
(Corollary) Let $f:X\rightarrow Y$ be a finite equidimensional dominant morphism between irreducible schemes. For $x$ (resp. $y$) the generic point of $X$ (resp. $y$). Then the canonical morphism of pro-objects $X_x\rightarrow X\times_Y Y_y$ is an isomorphism. 

proof. In fact, the preceding lemma induces that the set of opens $X\times_Y V$ of $X$, where $V$ be taken in the non empty opens of $Y$ is cofinal in $\mathcal{V}_x(X)$.

<span style="color:red">
In the following contexts $X_x$ will always be the pro-object in $Sm/k$.
</span>

### 5.2.3

For $f:X\rightarrow Y$ a finite dominant morphism between irreducible smooth morphisms. Let $x$ and $y$ be the generic points respectively. Consider $V$ and $V'$ being opens of $Y$ s.t. $V'\subset V$. Using 1.1.4, we obtain a commutative diagram

```rawlatex
\begin{tikzcd}
	{M_{gm}(V')} & {M_{gm}(X\times_YV')} \\
	{M_{gm}(V)} & {M_{gm}(X\times_YV)}
	\arrow["{f_{V'}^*}"{description}, from=1-1, to=1-2]
	\arrow[from=1-1, to=2-1]
	\arrow[from=1-2, to=2-2]
	\arrow["{f_V^*}"{description}, from=2-1, to=2-2]
\end{tikzcd}
```

where the vertical morphisms defined from open immersions and horizental the evident morphism. We then define the following morphism of pro-$DM_gm(k)$

$$ (\bar(f)^t=\lim_{V\in\mathcal{V}_y(Y)}^\tilde(V\xrightarrow{f_V^*}X\times_YV)):M_{gm}(Y_y)\rightarrow M_{gm}(X)\times_Y Y_y. $$

### 5.2.4
(Definition) Let $f:X\rightarrow Y$ be a finit dominant morphism, where $X$ and $Y$ are smooth connected schemes. Denote by $x$ and $y$ be the generic points respectively, then $\bar{f}:X_x\rightarrow Y_y$ the morphism induced by $f$.

We define a morphism $M_{gm}(Y_y)\xrightarrow{\bar{f}^*}M_{gm}(X_x)$ in pro-$DM_{gm}(k)$, namely the composition of transpose of $\bar{f}$ with

$$ M_{gm(Y_y)}\xrightarrow{\bar{f}^t}M_{gm}(X\times_Y Y_y)\xrightarrow{(1)}M_{gm}(X_x) $$

here (1) is the inverse morphism of the isomorphism deduced from 5.2.2.

### 5.2.5
(Lemma) Let $f:X\rightarrow Y$ and $g:Y\rightarrow Z$ be finite equidimensional morphisms and $X$, $Y$, $Z$ be smooth connected schemes, with generic points denoted respectively by $x$,$y$,$z$. Assume further that $h=g\circ f$. Then $\bar{h}^*=\bar{f}^*\circ\bar{g}^*$.


## 5.2.2 Models of definition

### 5.2.7
(Definition) Let $E$ and $L$ be function fields and $\phi:E\rightarrow L$ a finite morphism. We define a model of $L/E$ to be a morphism $f:(X,x)\rightarrow (Y,y)$ between pointed schemes such that $(Y,y)$ is a model of $E$, $(X,x)$ a model of $F$, and $f$ a finite dominant morphism such that the diagram

```rawlatex
\begin{tikzcd}
	L && E \\
	X && Y
	\arrow["\phi", from=1-1, to=1-3]
	\arrow["x"{description}, from=1-1, to=2-1]
	\arrow["y"{description}, from=1-3, to=2-3]
	\arrow["f", from=2-1, to=2-3]
\end{tikzcd}
```

### 5.2.8
(Lemma) A finite extension $$L/E of function fields always has a model.

proof. 
