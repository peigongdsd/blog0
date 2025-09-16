## Covariant Motives

(Just the inverse category of the category of pure motives, but let's rephrase it)


## Structure of the Pure Motive of a Curve

Over a field $k$. Say there is a (geometrically integral) smooth proper curve $C/k$. Hence the field of constants of $C$ is just $k$. Suppose there is a rational point 

$$ k\xrightarrow{\alpha} C\xrightarrow{struc} k $$

We see immediately that $h(C)$ admits a direct summand of $h(k)$. Moreover, take the transportation of the morphisms above, we have

$$ k\xrightarrow{struc^t} C\xrightarrow{\alpha^t} k $$

Let $d=\mathrm{dim}(C)$(this must be $1$ but let's just use this signature for wider generality), by passing to the category of covariant motives we have 

$$ h(struc^t)\in\mathrm{Corr}_{d}(k,C)\\ h(\alpha^t)\in\mathrm{Corr}_{-d}(C,k) $$

so we have another composition calculates to identity, namely

$$ h(k)\xrightarrow{h(struc^t)} h(C)(-d)\xrightarrow{h(\alpha^t)} h(k) $$

So we find another summand $h(k)(d)\subset h(C)$.

These two summands are denoted by $h^0(C)$ and $h^2(C)$ repspectively. From the definition it is easy to see that they are cut out by projectors $p_0=[C\times\{x\}]$ (the graph collapsed to a single point, indeed) and $p_2=[\{x\}\times C]$ respectively. In fact (I still feel like explaining further), 

$$h(C)\xrightarrow{h(struc)}h(k)\xrightarrow{h(\alpha)}h(C)$$

defines the projectors by 

$$
p_0=h(\alpha)\circ h(struc)\in\mathrm{Corr}_0(C,C) \\
p_2=h(struc^t)\circ h(\alpha^t)\in\mathrm{Corr}_0(C(-d),C(-d))=\mathrm{Corr}_0(C,C). 
$$

(Omit the calculation here)

For some curves, all parts they have is $h^0$ and $h^2$. For example, $h(\mathbb{P}^1)=h^0(\mathbb{P}^1)\oplus h^2(\mathbb{P}^1)=\mathbb{1}\oplus\mathbb{L}$. This is because 

$$ [\mathbb{P}^1\times \{x\}] + [\{x\}\times \mathbb{P}^1] \sim_{rat} \Delta_{\mathbb{P}^1\times\mathbb{P}^1} $$

in fact, the divisor $\Delta-[\mathbb{P}^1\times \{x\}] - [\{x\}\times \mathbb{P}^1]$ is the principle divisor defined by $(XZ-YW)/ZW$ if the coordinations are denoted by $[X:Y]$ and $[X:W]$ respectively.

In general, we could define $h^1(C)=h(C)-h^0(C)-h^2(C)$ (or strictly, the part cut off by $\mathrm{id}_C-p_0-p_2$).

## Preliminaries on Line Bindles

Degree problem, degree $0$ criterion

### CHATGPT START

Great question! On an abelian variety $A/k$ there are several equivalent ways to say a line bundle is “degree 0.” The condition you wrote

$$
m^{*}L\;\simeq\;p^{*}L\otimes q^{*}L\qquad\text{on }A\times A
$$

is one of the standard characterisations of **algebraically trivial / translation–invariant** line bundles, i.e. of $\Pic^0(A)$. Here’s the clean picture and why this really matches the “degree 0” intuition.

# 1) Why $m^{*}L\simeq p^{*}L\otimes q^{*}L$ singles out $\Pic^0(A)$

For any line bundle $L$ on $A$, define the **translation-difference map**

$$
\phi_L:A\longrightarrow \Pic^0(A)=A^\vee,\qquad
a\longmapsto T_a^{*}L\otimes L^{-1}.
$$

By Weil’s theorem of the square/cube, $\phi_L$ is a **group homomorphism** and the line bundle

$$
\Lambda(L):=m^{*}L\otimes p^{*}L^{-1}\otimes q^{*}L^{-1}
$$

is exactly the pullback $(1\times\phi_L)^{*}\mathcal P$ of the Poincaré bundle $\mathcal P$ on $A\times A^\vee$. Hence

$$
\Lambda(L)\text{ is trivial }\Longleftrightarrow \phi_L=0
\Longleftrightarrow m^{*}L\simeq p^{*}L\otimes q^{*}L.
$$

But $\phi_L=0$ holds precisely when $L$ is **algebraically equivalent to $\mathcal O_A$**, i.e. $L\in\Pic^0(A)$. So your condition is equivalent to “$L$ lies in $\Pic^0(A)$.” (A slick proof uses that $\Lambda(L)=(1\times\phi_L)^*\mathcal P$; if $\phi_L=0$ then $\Lambda(L)$ is trivial, giving the displayed identity, and conversely.) ([Virtual Math][1], [Southwest Center for Arithmetic Geometry][2])

A quick sanity check: restrict the identity along $i_a:A\to A\times A,\ x\mapsto(a,x)$. Then

$$
i_a^*(m^*L)\simeq T_a^*L,\quad i_a^*(p^*L)\simeq\mathcal O_A,\quad i_a^*(q^*L)\simeq L,
$$

so you get $T_a^*L\simeq L$ for all $a$, i.e. **translation invariance**, which is another common description of $\Pic^0(A)$. ([Yifeng Huang's Homepage][3], [Climbing Mount Bourbaki][4])

# 2) So… why call these “degree 0”?

On a **curve** $C$, $\Pic^0(C)$ literally means “line bundles of degree $0$.” In higher dimension there isn’t a single integer degree, but the right replacement is **numerical triviality** (all intersection numbers with curves vanish), or equivalently $c_1(L)=0$ in the Néron–Severi group:

$$
\Pic^0(A)=\ker\big(\Pic(A)\twoheadrightarrow \mathrm{NS}(A)\big),\qquad \mathrm{NS}(A)=\Pic(A)/\Pic^0(A).
$$

For abelian varieties, **algebraic and numerical equivalence coincide for divisors**, and $\mathrm{NS}(A)$ is torsion-free. Thus $L\in\Pic^0(A)$ iff $c_1(L)$ is numerically $0$; with any polarization $H$ one has
$\deg_H(L):=c_1(L)\cdot H^{g-1}=0$.
That’s why these bundles are universally called “degree 0.” ([Wikipedia][5], [arXiv][6], [jmilne.org][7])

There’s a third, very useful “degree” viewpoint: the homomorphism $\phi_L:A\to A^\vee$ above.

* If $L\in\Pic^0(A)$, then $\phi_L=0$ (so in this sense its “degree” is $0$).
* If $L$ is ample, then $\phi_L$ is an **isogeny**; its (finite) degree is the usual “degree” of a polarization, and equals a top intersection number of $c_1(L)$. ([Yifeng Huang's Homepage][3])

# 3) Summary of equivalent characterizations

For a line bundle $L$ on an abelian variety $A$, the following are equivalent:

* $L\in\Pic^0(A)$ (connected component of the identity in the Picard scheme / algebraically trivial). ([MIT Mathematics][8])
* $m^{*}L\simeq p^{*}L\otimes q^{*}L$ on $A\times A$ (biextension condition). ([Virtual Math][1])
* $T_a^{*}L\simeq L$ for all $a\in A$ (translation invariance). ([Yifeng Huang's Homepage][3])
* $\phi_L=0:A\to A^\vee$ (the translation–difference map is zero). ([Virtual Math][1])
* $c_1(L)=0$ in $\mathrm{NS}(A)$, i.e. $L$ is **numerically trivial** (hence “degree 0”

Jacobian of a general curve (not necessarily having a complex structure): having points corresponding to 

### CHATGPT END

Poinc\'are bundle on $X\times\mathrm{Pic}_X$: 

Abel-Jacobi map $X\rightarrow J_X$ for a curve: 

## Weil's Formula on Jacobians and Picard Groups

A classical theorem (Weil) says that divisor classes on a product of curves (we may assume the curves both admit a rational point, but maybe this condition could be relaxed) split as

$$
\mathrm{Pic}(X\times X')\;\cong\;\mathrm{Pic}(X)\ \oplus\ \mathrm{Pic}(X')\ \oplus\ \mathrm{Hom}(J,J').
$$

Intuitively:

* the first two summands are the pullbacks from the two factors, and
* the **cross-term** corresponds to line bundles on $X\times X'$ that restrict trivially to each fibre; by the seesaw theorem these are exactly the line bundles coming from homomorphisms $J\to P_{X'}$ (and for curves $P_{X'}\cong J'$).

An observation: each fibre $X\times x'$ where $x'\in X'$ 

### [Statement]

(Better state it clearly here)

### Proposition a
If $X$, $X'$ are curves with Jacobian varieties $J$, $J'$, then 

$$\mathrm{Hom}(h^1(X),h^1(X'))=\mathrm{Hom}(J,J')\otimes\mathbb{Q}.$$

To see it, note that $\mathrm{Hom}(h^1(X),h^1(X'))$ is just 

$$ (\Delta_{X'}-p_{0,X'}-p_{2,X'})\circ\mathrm{Corr}_0(X,X')\circ(\Delta_X-p_{0,X}-p_{2,X}) $$

The central term $\mathrm{Corr}_0(X,X')=\mathrm{A}_1(X\times X')$ calculates to three partitions

- $\mathrm{Pic}(X)$ pulling back to $X\times X'$. This is a divisor concentrating on the first projection, or a *cylinder* $c$ of type $(cycle\times X')/\sim$. In this case $\Delta_{X'}\circ c=c=p_{0,X'}\circ c$ and $p_{2,X'}\circ c=0$, so such term vanishes in composition.
- Symmetrically another, also vanishes.
- $\mathrm{Hom}(J,J')\otimes\mathbb{Q}$. For a class $c$ in such part, *there must be* $p_{0,X'}\circ c=p_{2,X'}\circ c=c\circ p_{0, X}=c\circ p_{2,X}$. In fact, (fact what?)

### Proposition a'
Furthermore, 


## Higher Case of the Decomposition

Remaining Problem: Identifying $\mathrm{Hom}(J,J')$ for a Curve.
What is this group viewed as a subgroup of cycles?

Associated to a variety $X/k$ there are two abelian varieties: the Albanese variety $\mathrm{J}_{X/k}$ and the Picard variety $\mathrm{Pic}_{X/k}$, when the former one serves as the initial object of the category of the morphisms from $X$ to abelian varieties over $k$, given a distinguished point $x_0\in X$, and the later functor being the $fppf$-sheafication of 

$$ S/k\mapsto\{\mathcal{L}\in\mathrm{Pic}(X\times_k S)/p^*\mathrm{Pic}(S)\} $$

Moreover, when $X(S)$ is nonempty, $\mathrm{Pic}_{X/k}(S)$ remains still after sheafication. Such functor is representable as an abelian variety (condition?).

What we care most is the degree $0$ part of the picard variety, namely $P_{X/k}$.

### Theorem
Let $X$ (connnected) and $Y$ be of dimensions $d$ and $e$ respectively. 

- (i) $$\mathrm{Hom}(J_X,P_Y)\otimes\mathbb{Q}=\frac{A^1(X\times Y)}{p_1^*A^1(X)+p_2^*A^1(Y)};$$
- (ii) Let $\zeta\in A_0(X)$, $\eta\in A_0(Y)$ be zero cycles of **positive** degree. Then there is an isomophism
$$ \Omega:\mathrm{Hom}(J_X,P_Y)\otimes\mathbb{Q}\rightarrow \{c\in A^1(X\times Y)\;|\;c\circ\zeta_*=0\;and\;\eta^*\circ c=0\}.$$

What is (ii) talking about? In fact, $c$ could be viewed as 
$$c\in A^1(X\times Y)=\mathrm{Corr}_{e-1}(X,Y)$$ (in the case of curve this is correspondence of degree $0$), while $\xi\in A_0(X)=\mathrm{Corr}_0(1,h(X))$ and $\eta\in A_0(Y)=A^e(Y)=\mathrm{Corr}_0(h(Y),\nathbb{L}^e)$.

((ii) is derived from (i), we pretend to know it right now.)

For (i),  suppose $X(k)$ and $Y(k)$ are both nonempty. Pick an $x_0\in X$ and 

$$ \mathrm{Hom}(J_X,P_Y)=\{\phi:X\rightarrow P_Y\;|\;\phi(x_0)=0\}\\
=\frac{\{\mathcal{L}\in\mathrm{Pic}(X\times Y)\;|\;\mathcal{L}_{x_0\times Y}\cong\mathcal{O}_Y\}}{p^*\mathrm{Pic}(X)}\\
=(seesaw\ theorem)\frac{\mathrm{Pic}(X\times Y)}{p_1^*\mathrm{Pic}(X)+p_2^*\mathrm{Pic}(Y)} $$

Then take the tensor product with $\mathbb{Q}$.

The point: since we require a morphism from $J_X$ to $P_Y$ instead of $X$ to $P_Y$, the induced morphism $X\rightarrow P_Y$ must cover the origin of the picard variety, so the image *should* lie in the degree-$0$ part naturally. Typically, the Albanese variety is connected (citation needed?).

```rawlatex
\begin{tikzcd}
	X & {P_Y} \\
	{x_0} & 0
	\arrow[from=1-1, to=1-2]
	\arrow[from=2-1, to=1-1]
	\arrow[from=2-1, to=2-2]
	\arrow[from=2-2, to=1-2]
\end{tikzcd}
```

PY



