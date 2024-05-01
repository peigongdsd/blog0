On Reading *Chow Groups with Coefficients* by Rost
===

# 1. Cycle premodules

Let $B/k$ be a scheme. The word *scheme* here means a localization of a separated scheme of finite type over a field. We mean by a field over $B$ a field $F$ together with a morphism $Spec(F)\rightarrow B$ s.t. F is finitely generated (of finite transcedental degree) over $k$. By a valuation over $B$ we mean a discrete valuation $\nu$ of rank 1 together with a morphism $Spec(\mathcal{O}_\nu)\rightarrow B$ s.t. $\nu$ is of geometric type over $k$. The latter means that $\mathcal{O}_\nu$ is the localization of an integral domain of finite type over $k$ in a regular point of codimension $1$. Alternatively, valuations of geometric type may be characterized by: $k\subset\mathcal{O}_\nu$, the quotient field $F$ and the residue class field $\kappa(\nu)$ are finitely generated over $k$ and $tr.deg(F|k)=tr.deg(\kappa(\nu)|k)+1$.

In the following the letters $\phi$, $\psi$ stand for homomorphisms of fields over $B$ and all maps between various $M(F)$, $M(E)$ are understood as homomorphisms of graded abelian groups.

## 1.1
(Definition) Let $\mathcal{F}(B)$ be the class of fields over $B$. A cycle premodule $M$ consists of a function $M:\mathcal{F}(B)\rightarrow\mathcal{A}$ to the calss of abelian groups together with a $\mathbb{Z}/2$ or a $\mathbb{Z}$ grading and with the following data D1-D4 and rules R1a-R3e.

- (D1) For each $\phi:F\rightarrow E$ there is $\phi_*:M(F)\rightarrow M(E)$ of degree $0$.
- (D2) For each finite $\phi:F\rightarrow E$ there is $\phi^*:M(E)\rightarrow M(F)$ of degree $0$.
- (D3) For each $F$ the group $M(F)$ is equipped with a left $K_*F$-module structure denoted by $x\cdot\rho$ for $x\in K_*F$ and $\rho\in M(F)$. The product respects the grading.
- (D4) For a valuation $\nu$ on $F$ there is $\partial_\nu:M(F)\rightarrow M(\kappa(\nu))$ of degree $-1$.

For a prime $\pi$ of $\nu$ on $F$ we put

$$ s_\nu^\pi:M(F)\rightarrow M(\kappa(\nu)), $$
$$ s_\nu^\pi(\rho)=\partial_\nu(\{-\pi\}\cdot\rho). $$

Note that this map is of degree $0$.

- (R1a) $\phi_*$ is functorial.
- (R1b) $\phi^*$ is functorial.
- (R1c) In the cocartesian diagram

```rawlatex
\begin{tikzcd}
	F & E \\
	L & {R=E\otimes_FL}
	\arrow["\phi", from=1-1, to=1-2]
	\arrow["\psi"', from=1-1, to=2-1]
	\arrow[from=1-2, to=2-2]
	\arrow[from=2-1, to=2-2]
\end{tikzcd}
```

for $p\in Spec(R)$ let $\phi_p:L\rightarrow R/p$ and $\psi_p:E\rightarrow R/p$ be the natural maps. Moreover let $l_p$ be the length of the localized ring $R_p$. Then

$$ \psi_*\phi^*=\sum_p l_0\cdot (\phi_p^*\circ\psi_{p*}). $$

- (R2) For $\phi:F\rightarrow E$, $x\in K_*F$, $y\in K_*E$, $\rho\in M(F)$, $\mu\in M(E)$ one has (with $\phi$ finite if required)
- (R2a) $\phi_*(x\cdot\rho)=\phi_*(x)\cdot\phi_*(\rho)$.
- (R2b) $\phi^*(\phi_*(x)\cdot\mu)=x\cdot\phi^*(\mu)$.
- (R2c) $\phi^*(y\cdot\phi_*(\rho))=\phi^*(y)\cdot\rho$.


- (R3a) Let $\phi:E\rightarrow F$ and let $\nu$ bve a valuation on $F$ which restricts to a nontrivial valuation $\omega$ on $E$ with ramification index $e$. Let $\bar{\phi}:\kappa(\omega)\rightarrow\kappa(\nu)$ be the induced map. Then

$$ \partial_\nu\circ\phi_*=e\cdot\bar{\phi}_*\circ\partial_\omega. $$

- (R3b) Let $\phi:F\rightarrow E$ be finite and let $\nu$ be a valuation on $F$. For the extensions $\omega$ of $\nu$ to $E$ let $\phi_\omega:\kappa(\nu)\rightarrow\kappa(\omega)$ be the induced maps. Then

$$ \partial_\nu\circ\phi^*=\sum_\omega\phi_\omega^*\circ\partial_\omega. $$

<span style="color:red">
Wait, all the extensions? I cannot get a clear picture on this
</span>

- (R3c) Let $\phi:E\rightarrow F$ and let $\nu$ be a valuation on $F$ which is trivial on $E$. Then

$$ \partial_\nu\circ\phi_*=0. $$

<span style="color:red">
Trivial means every unit is valued $0$. For example local fields of char $p$.
</span>

- (R3d) Let $\phi$, $\nu$ be as in (R3c), let $\bar{\phi}:E\rightarrow\kappa(\nu)$ be the induced map and $\pi$ be a prime of $\nu$. Then

$$ s_\nu^\pi\circ\phi_*=\bar{\phi}_*. $$

<span style="color:red">
This is the common definition of residue map in Milnor's K ring.
</span>

- (R3e) For valuation $\nu$ on $F$, a $\nu$-unit $u$ and $\rho\in M(F)$ one has 

$$ \partial_\nu(\{u\}\cdot\rho)=-\{\bar{u}\}\cdot\partial_\nu(\rho). $$

These maps $\phi_*$ and $\phi^*$ are called the restriction and corestriction homomorphisms, respectively. We use the notations $\phi_*=r_{E|F}$, $\phi^*=c_{E|F}$ uif there is no ambiguity.

Note that (R2c) with $y=1\in K_0E$ gives (follows from basic property of Milnor's K ring)

- (R2d) For finite $\phi:F\rightarrow E$ one has

$$ \phi^*\circ\phi_*=(deg\phi)\cdot id. $$

Moreover (R1c) implies

- (R2e) For finite totally inseparable $\phi:F\rightarrow E$ one has 

$$ \phi_*\circ\phi^*=(deg\phi)\cdot id. $$

We consider $M(F)$ also as a right $K_*F$-module via 

$$ \rho\cdot x=(-1)^{nm}x\cdot\rho $$

for $x\in K_nF$ and $\rho\in M_m(F)$.
