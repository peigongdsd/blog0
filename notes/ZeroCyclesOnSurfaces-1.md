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


# Family of Lines on a Hypersurface

## Case 1
$X\subset\mathbb{P}^4$ a smooth hypersurface of degree $3$ (cubic threefold). The family of lines on $X$ forms a smooth connected surface $S\subset\mathrm{Gr}(2,5)$ called the Fano surface (not Del Pezzo surface).

The Fano surface $S$ of a smooth cubic threefold $F$ into $\mathbb{P}^4$ carries many remarkable geometric properties. The surface $S$ is naturally embedded into the grassmannian of lines $\mathrm{Gr}(2,5)$ of $\mathbb{P}^4$. Let $U$ be the restriction to $S$ of the universal rank $2$ bundle on $G$. We have the:

**Tangent bundle Theorem (Fano, Clemens-Griffiths, Tyurin)** The tangent bundle of $S$ is isomorphic to $U$.

**Torelli-type Theorem** Let $g'$ be the natural morphism from $S\hookrightarrow \mathrm{Gr}(2,5)$ defined by the cotangent sheaf of $S$ generated by its 5-dimensional space of global sections (to add some recall on morphism to grassmannians). Let $F'$ be the union of the lines corresponding to $g'(S)$. The threefold $F'$ is isomorphic to $F$.

## Case 2
$X\subset\mathbb{P}^4$ a smooth hypersurface of degree $4$. The family of lines on $X$ is known to form a connected (in general, smooth) curve $F\subset\mathrm{Gr}(2,5)$. (S. Bloch and J. P. Murre, On the Chow groups of certain types of Fano threefolds, Compositio Math., 39 (1979), 47–105.)

# Geometry of the Fano Surface

# (Example 1.7) On the Fano Surface
On a Fano surface $S$, intersection of divisors gives bilinear maps
$$
  \mathrm{Pic}(S)\otimes_{\mathbb{Z}}\mathrm{Pic}^0(S)\rightarrow A_0(S).
$$
Restrict the first variable to divisors algebraically equivalent to $0$, we can see the morphism
$$
  \mathrm{Pic}^0(S)\otimes_{\mathbb{Z}}\mathrm{Pic}^0(S)\xrightarrow{\varphi} A_0(S)\rightarrow\mathrm{Alb}(S)
$$
is a continuous bilinear map between compact tori, hence $\mathrm{Mor}(\mathrm{Pic}^0(S),\mathrm{Alb}(S))$ is descrete, which implies that the image of $\varphi$ lies in $T(S)$.




# Intermediate Jacobian
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

# Why is Intermediate Jacobian a Complex Torus

An alternative definition of the intermediate jacobian is $$
  J^r(X)=\mathrm{H}^{2r-1}(X,\mathbb{C})/(F^r)
$$

To see such a construction is indeed a complex torus, one first translate using Poincaré duality, where
