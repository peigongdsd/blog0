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
