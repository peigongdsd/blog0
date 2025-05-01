# Preparation

## Higher Gysin Homomorphism

## Adequate Equivalence Relations

On a smooth curve,

# Zero Cycles on Surfaces

```rawlatex
\begin{tikzcd}
	0 & {T(X)} & {A_0(X)} & {\mathrm{Alb}(X)} & 0
	\arrow[from=1-1, to=1-2]
	\arrow[from=1-2, to=1-3]
	\arrow[from=1-3, to=1-4]
	\arrow[from=1-4, to=1-5]
\end{tikzcd}
```

Investigating $T(X)$ in different settings.

$A_0(X)$ and $T(X)$ are divisible.


## First Example: Hyperelliptic

Let $E$ and $F$ be elliptic curves, with $\eta\in F$ a point of order $2$. Define an involution $\sigma$ on $F\times E$ by $\sigma(f,g)=(-f,g+\eta)$, and let $X=(F\times E)/\sigma$. Let $E'=E/\{1,\eta\}$ we then conclude a diagram

```rawlatex
\begin{tikzcd}
	{F\times E} & E \\
	X & {E'}
	\arrow["p", from=1-1, to=1-2]
	\arrow["\pi"', from=1-1, to=2-1]
	\arrow[from=1-2, to=2-2]
	\arrow["\rho", from=2-1, to=2-2]
\end{tikzcd}
```
therefore all the fibres of $\rho$ should be isomorphic to $F$. To see this, track the inverse image of the origin $o\in E'$. $o$ goes upward to $\{o,\eta\}\in E$ then back to two copies of $F$ in $F\times E$, which are identified under quotient of the involution $\sigma$ (reflection).

Note that the Albanese variety to $X$ is defined as $\mathrm{H}^0(X,\Omega_{X}^1)^*/\mathrm{H}_1(X,\mathbb{Z})$, which is the initial object in the category of abelian varieties under $X$. That is, $\mathrm{Alb}(X)$ must be the *largest* abelian variety admitting a morphism from $X$, in the sense of dimension. Here
$$
\begin{aligned}
  \mathrm{H}^0(X,\Omega_{X}^1)&=\mathrm{H}^0(F\times E,\Omega_{F\times E}^1)/\sigma\ (to\ be\ explained)\\
  &=\left(\mathrm{H}^0(F,\Omega_{F}^1)\oplus\mathrm{H}^0(E,\Omega_{E}^1)\right)/\sigma\\
  &=\mathrm{H}^0(E,\Omega_{E}^1)=\mathbb{C}.
\end{aligned}
$$
Hence $\mathrm{Alb}(X)$ has dimension $1$, and the induced morphism $\mathrm{Alb}(X)\rightarrow E'$ is quasi-finite. Since $\rho$ has connected fibres, $\mathrm{Alb}(X)\rightarrow E'$ is an isomorphism.

**Claim** $A_0(X)\cong E'=\mathrm{Alb}(X)$, or $T(x)=0$.
If $z\in T(X)$, we have
$$ \pi^*z=\sum_i r_i\left((q_i,p_i)+(-q_i,p_i+\eta)\right) $$
where $\sum r_i=0$ (algebraically equivalent to $0$) and $\sum 2r_ip_i=0$ (maps to $0\in E'$). According to the arithmetic of elliptic curves,
$$
(p)+^{pic}(q)\sim (p+^{ellip}q)+(\infty)
$$
so
$$
\begin{aligned}
2(q,p)&\sim 2(q,p+\eta)\\
(q,p)+(-q,p)&\sim 2(0,p)
\end{aligned}
$$
on $F\times E$. Therefore
$$
\begin{aligned}
2\pi^*z&\sim\sum 2r_i\left((q_i,p_i)+(-q_i,p_i+\eta)\right)\\
&\sim\sum 4r_i(0,p_i)\\
&\sim [(0)\times E]\cdot[F\times\sum 4r_i(p_i)]\\
&\sim 0.
\end{aligned}
$$
It follows that $0\sim 2\pi_*\pi^*z=4z$ (\pi is a cover with two branches), hence $4T(x)=0$, which implies that $T(X)=0$ since $T(X)$ is divisible.


## Second Example: Surface of degree $5$
Let $Y$ be the subvariety of $\mathbb{P}^3$ cut out by $T_0^5+T_1^5+T_2^5+T_3^5=0$. Define an action of $\mathbb{Z}/5\mathbb{Z}$ on $Y$ by
$$
(t_0,t_1,t_2,t_3)\mapsto (t_0,\omega t_1,\omega^2 t_2,\omega^3 t_3)
$$
where $\omega$ is a primitive $5$-th root of unity. This action is fixed point free, so the quotient $X=Y/(\mathbb{Z}/5\mathbb{Z})$ is smooth.

**Claim** $A_0(X)=\{0\}$.

Let $\pi:Y\rightarrow X$ be the projection. Since $A_0(X)$ is divisible, it suffices to show $5A_0(X)=0$, or $\pi_*\pi^*A_0(X)=0$. Since $\pi_*$ is surjective, it suffices to show $\pi^*\pi_*:A_0(Y)\rightarrow A_0(Y)$ is the zero map.

Define an action of $(\mathbb{Z}/5\mathbb{Z})^{\oplus 3}$ on $Y$ by $$
e_i^*T_j=\omega^{\delta_{ij}}T_j.
$$

This gives a representation $\mathbb{Z}[\mathbb{Z}/5\mathbb{Z}^{\oplus 3}]\rightarrow\mathrm{End}(A_0(Y))$ sending $x$ to $\bar{x}$, which image is denoted by $R\subset\mathrm{End}(A_0(Y))$. It follows immediately That
$$
\pi^*\pi_*=1+\bar{e}_1\bar{e}_2^2\bar{e}_3^3+(\bar{e}_1\bar{e}_2^2\bar{e}_3^3)^2+\cdots+(\bar{e}_1\bar{e}_2^2\bar{e}_3 ^3)^4.
$$

**Observation** The quotient of the surface $Y$ under any of the following groups

- $<1,e_i,\cdots,e_i^4>$
- $<1,e_ie_i,\cdots,e_i^4e_i^4>$
- $<1,e_1e_2e_3,\cdots,e_1^4e_2^4e_3^4>$

is rational (birational to $\mathbb{P}^2$). To prove it...

As a result, $A_0(Y/G)$ must be trivial when $Y/G$ is rational, which could be seen easily using moving lemma (just to push the zero cycle away from the exceptional loci). As a result, every zero cycle of zero degree is rational. Denote by $\pi_G$ the projection from $Y$ to $Y/G$, for each zero cycle $z\in Y/G$ we have
$$
\int_{g\in G} g^*z=\pi_{G*}\pi^*z
$$
so
$$
\sum_{n=1}^4\bar{e}_i^n=\sum_{n=1}^4\bar{e}_i^n\bar{e}_j^n=\sum_{n=1}^4\bar{e}_1^n\bar{e}_2^n\bar{e}_3^n=0
$$
in $R\subset\mathrm{End}(A_0(Y))$.

Now go back to the proof of the claim.


## Family of Lines on a Hypersurface

### Case 1
$X\subset\mathbb{P}^4$ a smooth hypersurface of degree $3$ (cubic threefold). The family of lines on $X$ forms a smooth connected surface $S\subset\mathrm{Gr}(2,5)$ called the Fano surface (not Del Pezzo surface). (A. N. Tyurin, Five lectures on three-dimensional varieties (in Russian), Uspehi Mat. Nauk, 27 (1972), no. 5, (167) 3–50. [Translation: Russian Math. Surveys, 27 (1972), no. 5, 1–53.])

The Fano surface $S$ of a smooth cubic threefold $F$ into $\mathbb{P}^4$ carries many remarkable geometric properties. The surface $S$ is naturally embedded into the grassmannian of lines $\mathrm{Gr}(2,5)$ of $\mathbb{P}^4$. Let $U$ be the restriction to $S$ of the universal rank $2$ bundle on $G$. We have the:

**Tangent bundle Theorem (Fano, Clemens-Griffiths, Tyurin)** The tangent bundle of $S$ is isomorphic to $U$.

**Torelli-type Theorem** Let $g'$ be the natural morphism from $S\hookrightarrow \mathrm{Gr}(2,5)$ defined by the cotangent sheaf of $S$ generated by its 5-dimensional space of global sections (to add some recall on morphism to grassmannians). Let $F'$ be the union of the lines corresponding to $g'(S)$. The threefold $F'$ is isomorphic to $F$.

### Case 2
$X\subset\mathbb{P}^4$ a smooth hypersurface of degree $4$. The family of lines on $X$ is known to form a connected (in general, smooth) curve $F\subset\mathrm{Gr}(2,5)$. (S. Bloch and J. P. Murre, On the Chow groups of certain types of Fano threefolds, Compositio Math., 39 (1979), 47–105.)

**Theorem (2.2 on Lecture)** Further assume the curve of lines $F$ is smooth. Then $$
  \Theta:A^2(X)\rightarrow J^2(X)
$$
is an isomorphism. (Construct the cycle map later on)

**Remark (something really strange)** If $s\in F$ corredponds to the line $\ell_s\subset X$, one can define an incidence correspondence $\Sigma$ on $F$ essentially by taking the closure of the set $$
  \{(s,t)\in F\times F-\Delta|\ell_s\cap\ell_t\not=\varnothing\}.
$$
$J^2(X)$ can therefore be identified (Tyurin, add ref later) with *generalized Pyrm*
$$
P_\Sigma(F)=\mathrm{Image}(\Sigma_*-1:J(F)\rightarrow J(F))
$$
where $J(F)$ is the Jacobian of $F$ amd $\Sigma_*$ satisties a certain quadratic relation $$
  \Sigma_*^2+(q-2)\Sigma_*-(q-1)=0.
$$
On $q-1$ this is the *standard Prym*. For quadratic threefold, $q=24$.

Now we come to build theorem 2.2.

**Proposition 2.4** Let $X$ be a smooth quartic threefold. Then $\Theta:A^2(X)\rightarrow J^2(X)$ is an isogeny.

To build 2.4 we need several lemmas further.

**Lemma 2.5** Let $X$ be a smooth quartic threefold, and $\pi:Y\rightarrow X$ obtained by blowing up $X$ at a non-singular closed subvariety $V\subset X$. Then $\Theta_X:A^2(X)\rightarrow J^2(X)$ is an isogeny iff $\Theta_Y$ is.

**proof**

- Case 1: If $V$ is a point, $A^2(X)=A^2(Y)$ and $J^2(X)=J^2(Y)$. The former statement is due to the definition of blowup: Replacing a point with $\mathbb{P}^2$ does not really change $A^2$. The latter one (maybe cohomological purity theorem)
- Case 2: If $V$ is a curve, (investigate later)

**Lemma 2.6** Let $X$ and $Y$ be smooth projective threefolds, and $\pi:Y\dashrightarrow$ X be a rational map of degree $d>0$ (the field extension on generic point is deg $d$ algebraic). The $\Theta_Y$ being an isogeny implies $\Theta_X$ being an isogeny.

**proof** One may resolve the indeterminacy (blowup from *nonsingular* centers) to make the map into a genuine morphism.

```rawlatex
\begin{tikzcd}
	{Y'} \\
	Y & X
	\arrow[from=1-1, to=2-1]
	\arrow["{\pi'}", from=1-1, to=2-2]
	\arrow["\pi", dashed, from=2-1, to=2-2]
\end{tikzcd}
```

Using the lemma above the case is reduced to the map being everywhere defined. Now consider the diagram

```rawlatex
\begin{tikzcd}
	{A^2(Y)} & {J^2(Y)} \\
	{A^2(X)} & {J^2(X)}
	\arrow["{\Theta_Y}", from=1-1, to=1-2]
	\arrow["{\pi_*}"', shift right, from=1-1, to=2-1]
	\arrow["{\pi_*}"', shift right, from=1-2, to=2-2]
	\arrow["{\pi^*}"', shift right, from=2-1, to=1-1]
	\arrow["{\Theta_X}", from=2-1, to=2-2]
	\arrow["{\pi^*}"', shift right, from=2-2, to=1-2]
\end{tikzcd}
```

- Now $\pi':Y\rightarrow X$ is generically finite locally free of degree $d$.
- On the left side $\pi_*\pi^*$ induces multiplcation by $d$. This is seen by pushing any cycle away (moving lemma) from the locus where $\pi'$ failes to be finite locally free.
- On the right side, $J^2(T)$ is just $$
  \mathrm{H}^{3,0}(T)\oplus\mathrm{H}^{2,1}(T)/\mathrm{H}_3(T).
$$
We shall then analyse separatly on Hodge cohomologies and the lattice formed by homology groups. Take $\textbf{1}\in\mathrm{H}^0(Y,\mathbb{C})$ then use the projection formula we know that $$
  \pi_*(\pi^*(\alpha)\cup\textbf{1})=\alpha\cup\pi_*(\textbf{1})=\alpha\cup (d\cdot\textbf{1}).
$$
On the other hand, using the Poincaré duality of $\mathrm{H}_3$ to $\mathrm{H}^3(\mathbb{Z})$ and the functoriality of $\pi_*$ and $\pi^*$, $\pi_*\pi^*$ also induces a multiplcation by $d$.
- Note that $A^2(X)$ and $J^2(X)$ are divisible and


**Lemma 2.6** Let $X$ be a smooth quartic threefold. Then $\Theta:A^2(X)\rightarrow J^2(X)$ is an isogeny.

## Geometry of the Fano Surface

## (Example 1.7) On the Fano Surface, Incidence Divisor
On a Fano surface $S$ (of a cubic threefold $X$), intersection of divisors gives bilinear maps
$$
  \mathrm{Pic}(S)\otimes_{\mathbb{Z}}\mathrm{Pic}^0(S)\rightarrow A_0(S).\quad\tag*{(A)}
$$
Restrict the first variable to divisors algebraically equivalent to $0$, we can see the morphism
$$
  \mathrm{Pic}^0(S)\otimes_{\mathbb{Z}}\mathrm{Pic}^0(S)\xrightarrow{\varphi} A_0(S)\rightarrow\mathrm{Alb}(S)
$$
is a continuous bilinear map between compact tori, hence $\mathrm{Mor}(\mathrm{Pic}^0(S),\mathrm{Alb}(S))$ is descrete, which implies that the image of $\varphi$ lies in $T(S)$.

**Claim** Both the morphism (A) and
$$
  \mathrm{Pic}^0(S)\otimes_{\mathbb{Z}}\mathrm{Pic}^0(S)\rightarrow T(S)\quad\tag*{(B)}
$$
are surjective.

**proof** (fact? for zero cycles, degree zero implies algebraic to zero) Let $r,s\in S$ be general points (moving lemma), then it will suffice (divisibility) to show that $$
2(r)-2(s)\in\mathrm{Image}(\mathrm{Pic}(S)\otimes_{\mathbb{Z}}\mathrm{Pic}^0(S)\rightarrow A_0(S)).
$$
The line on $X$ corresponding to $s\in S$ will be denoted $\ell_s$, and denote by $D_s$ the divisor $$
  \overline{\{t\in S| \ell_t\cap\ell_s\not=\emptyset,t\not=s\}}
$$
(the incidence divisor, see C-G p.284 p.290).

In general, (needs further illustration)

- $s\not\in D_s$,
- $D_s\cdot D_t$ has degree $5$.

Then suppose $r$ and $s$ are essentially general, there should be a general $t$ (explain?) s.t. $\ell_r\cap\ell_t\not=\emptyset$ and $\ell_s\cap\ell_t\not=\emptyset$.

Since $2((r)-(s))=2((r)-(t))+2((t)-(s))$, we may assume $\ell_r\cap\ell_s\not=\emptyset$ (that means the case is reduced to $2(r)-2(t)$).

Now let $L\subset\mathbb{P}^4$ be the plane spanned by $\ell_r$ and $\ell_s$. Let $\ell_u$ be the third line in $L\cap X=\ell_r\cup\ell_s\cup\ell_u$ (degree $1$, codim $2$ meets degree $3$, dim $3$ in general position).

Through a general point of $X$ there pass $6$ lines (interesting), and we denote by $\theta:\mathrm{CH}_0(X)\rightarrow\mathrm{CH}_0(S)$ the correspondence thus defined, or to say $$
  \theta(p)=([\ell_1])+\cdots+([\ell_6]).
$$
(Can this homomorphism be realized as a correspondence?)

```rawlatex
\includegraphics{ZeroCycleIncidence.png}
```

In our case, we thus have (We may complete other parts first)

$$
\begin{aligned}
  \theta(a)&=(r)+(t)+(s_1)+\cdots+(s_4)\\
  &\sim
\end{aligned}
$$




## Intermediate Jacobian
Main example: smooth hypersurface $X\subset\mathbb{P}^4$ of degree $4$, which witnesses which $A^2$ concides with $J^2$. Here $J^2$ is the intermediate jacobian.

TBS: the $r$-th Intermediate jacobian on $X$ is defined as $$
  J^r(X)=(F^{n-r+1}\mathrm{H}^{2n-2r+1}(X,\mathbb{C}))^*/\mathrm{H}_{2n-2r+1}(X,\mathbb{Z})
$$
where $F^\bullet$ is the Hodge filtration. According to the Hodge decomposition $$
  \mathrm{H}^k(X,\mathbb{C})=\mathrm{H}^{k,0}\oplus\cdots\oplus\mathrm{H}^{0,k}
$$
the $r$-th filtration $F^r\mathrm{H}^k(X,\mathbb{C})$ is $$
  F^r\mathrm{H}^k(X,\mathbb{C})=\mathrm{H}^{k-r,r}\oplus\cdots\oplus\mathrm{H}^{k,0}.
$$

In the case of $r=n$ the intermediate jacobian $J^n(X)$ is just $$
(F^1\mathrm{H}^1(X,\mathbb{C}))^*/\mathrm{H}_{1}(X,\mathbb{Z})=\mathrm{H}^0(X,\Omega_{X}^1)^*/\mathrm{H}_{1}(X,\mathbb{Z})=\mathrm{Alb}(X)
$$
which coincides with the ordinary Jacobian.

---

## Intermediate Jacobian is a Complex Torus

An alternative definition of the intermediate jacobian is $$
  J^r(X)=\mathrm{H}^{2r-1}(X,\mathbb{C})/(F^r)
$$

To see such a construction is indeed a complex torus, one first translate using Poincaré duality, where

## Appendix 1A sketch
