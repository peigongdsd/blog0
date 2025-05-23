# Duality, Polarization and Riemann Form

## Preliminaries: (Real) Bilinear Forms on Complex Vector Spaces

A complex vector space $V=\mathbb{C}^g$ can be viewed as a real vector space of dimension $2g$. Theorietically, we may consider all linear forms/bilinear forms on $V$, however, some certain restriants should be introduced to maintain the complex structure. A skew-symmetric real bilinear form $E:V\times V\rightarrow \mathbb{R}$ is said to be *rotationally symmetric* if $$ E(u,v)=E(iu,iv) $$ where $i=\sqrt{-1}$ in the induced linear transformation on $V$ by the complex structure. Firstly note that for such a bilnear form $E(\bullet,\bullet)$, the form $$E(i\bullet,\bullet)$$ is symmetric. Moreover, from which we see that given $\alpha,\beta\in\mathbb{R}$ satisfying $\alpha^2+\beta^2=1$ we have
$$\begin{aligned}
E((\alpha+i\beta)\cdot u, (\alpha&+i\beta)\cdot v)=(\alpha^2+\beta^2)E(u,v)\\
  &+E(\alpha u,i\beta v)+E(i\beta u,\alpha v)\\
  &=E(u,v)+\alpha\beta(-E(iv,u)+E(iu,v))\\
  &=E(u,v)
\end{aligned}$$
which is indeed the meaning of being rotational skew-symmetric if $\alpha$ and $\beta$ are equal to $\cos\theta$ and $\sin\theta$ for some $\theta\in\mathbb{R}$ respectively.

Additionally, note that such rotationally symmetric forms correspond to Hermitian forms on $V$ in an one-to-one mannar. To see this, to a rotational skew-symmetric form $E$ associate $$ H(u,v)=E(iu,v)+iE(u,v) $$
which is obviously a Hermitian form, and to a Hermitian form we may associate
$$ \mathrm{Im}H $$
which is clearly rotationally symmetric.

A lattice $\Lambda\in V=\mathbb{C}^g$ is said to be *full* if $\Lambda\otimes_\mathbb{Z}\mathbb{R}\rightarrow V$ is a surjection, which implies that $\Lambda$ is free of rank $2g$ if viewed as an abelian subgroup of $V$. A *Riemann form* on a complex vector space $V$ is the following data

- A full lattice $\Lambda\subset V$,
- and a skew-symmetric form $e:\Lambda\times\Lambda\rightarrow\mathbb{Z}$ such that the base change $e\otimes\mathbb{R}$ is a rotationally symmetric form on $V$ with the corresponding Hermitian form being positive-definite.



## Complex Torus, Albanese variety
Given $g\in\mathbb{N}_+$ and a full lattice $\Lambda\in\mathbb{C}^g$, the quotient space $\mathbb{C}^g/\Lambda$ is called a *complex torus*.


Let's build the (iso-)morphism from a complex torus $A$ to it's Albanese variety.
```rawlatex
\begin{tikzcd}
	0 & \Lambda & {\mathbb{C}^g} & A & 0 \\
	0 & {\mathrm{H}_1(A)} & {(\mathrm{Hom}^0(A,\Omega_{A/\mathbb{C}}^1))^*} & {\mathrm{Alb}(A)} & 0
	\arrow[from=1-1, to=1-2]
	\arrow[from=1-2, to=1-3]
	\arrow["u", from=1-2, to=2-2]
	\arrow[from=1-3, to=1-4]
	\arrow["v", from=1-3, to=2-3]
	\arrow[from=1-4, to=1-5]
	\arrow[from=1-4, to=2-4]
	\arrow[from=2-1, to=2-2]
	\arrow[from=2-2, to=2-3]
	\arrow[from=2-3, to=2-4]
	\arrow[from=2-4, to=2-5]
\end{tikzcd}
```

- There is a isomorphism $u:\Lambda\rightarrow\mathrm{H}_1(A)$ defined as follows: for every point $p\in\Lambda$ choose a path from the origin $0\in\mathbb{C}^g$ to $p$, which then correspondes to a cycle in $A$ since $0$ and $p$ send to the same point of the torus $A$.

- A path in $\mathbb{C}$ correspondes immediately to an object in $(\mathrm{H}^0(A,\Omega_{A/\mathbb{C}}^1))^*$, hence $v:\mathbb{C}^g\rightarrow(\mathrm{H}^0(A,\Omega_{A/\mathbb{C}}^1))^*$ sends a point $p$ to the object corresponding to a path linking $0$ and $p$.

- It is clear that $v(p)$ does not depend ot the choice of the path linking $0$ and $p$ since $\mathrm{H}^0(A,\Omega_{A/\mathbb{C}}^1)$ consists only globally defined *holomorphic* forms. Since $\mathbb{C}^g$ is a covering space (todo)

- $u$ and $v$ are isomorphisms (todo)

## Theorem of the Cube, Translation Invariance of a Line Bundle

[The theorem of the cube I](https://amathew.wordpress.com/2012/04/11/line-bundles-on-abelian-varieties/#more-3224)

Given a variety $X$ and an abelian variety $A$. Let $f,g,h:X\rightarrow A$ be three morphisms
, then for any $\mathcal{L}\in\mathrm{Pic}(A)$ we have
$$\begin{aligned}
(f+g+h)^*\mathcal{L}&=(f+g)^*\mathcal{L}\otimes (g+h)^*\mathcal{L}\otimes (h+f)^*\mathcal{L}\\
&\otimes f^*\mathcal{L}^{-1}\otimes g^*\mathcal{L}^{-1}\otimes h^*\mathcal{L}^{-1}.
\end{aligned}$$

[The theorem of the cube II](https://amathew.wordpress.com/2012/04/12/line-bundles-on-abelian-varieties-ii/)

Specifically, if $X=A$ and $x,y\in A$ are two points, then for any $\mathcal{L}\in\mathrm{Pic}(A)$ we have

$$ t_{x+y}^*\mathcal{L}\otimes\mathcal{L}=t_x^*\mathcal{L}\otimes t_y^*\mathcal{L} $$

where $t_a$ is the translation map $(+a)$ on $A$. This is proved by setting $f$, $g$ and $h$ to $\mathrm{Id}_A$ and constant maps sending $A$ to $x$ and $y$ respectively.

(todo: Translation invariance <=> Algebraically trivial)

## Isogeny and Duality

Isogeny defines an equivalance relation.

To a complex torus $V/\Lambda$,

## Theorem (Riemann–Poincaré)

Let $C$ be a compact Riemann surface (smooth projective curve) of genus $g$, and let $J(C)$ denote its Jacobian. Consider the Abel–Jacobi map:
$$
\kappa^{(k)} : C^{(k)} \to J(C)
$$
from the $k$th symmetric product $C^{(k)} := C^k/S_k$ into the Jacobian.

Let $\theta \subset J(C)$ denote the theta divisor, and also write $\theta$ for its cohomology class.

Then:

1. **(Poincaré’s Formula)**
   For $k \le g$, the image $\kappa^{(k)}(C^{(k)})$ represents the homology class
   $$
   [\kappa^{(k)}(C^{(k)})] = \frac{1}{(g-k)!} \theta^{g-k} \in H_{2k}(J(C), \mathbb{Z}).
   $$

2. **(Riemann’s Theorem)**
   For $k = g-1$, the image $\kappa^{(g-1)}(C^{(g-1)})$ is a translate of the theta divisor:
   $$
   \kappa^{(g-1)}(C^{(g-1)}) = \theta + (\text{constant}).
   $$
   Hence, the divisor $\theta$ determines the canonical class of the curve via the Abel–Jacobi map.

These classical results together are known as the **Riemann–Poincaré theorem**, describing the geometry and homology of the images of symmetric products of $C$ inside its Jacobian $J(C)$.
