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
- and a skew-symmetric form $e:\Lambda\times\Lambda\rightarrow\mathbb{Z}$ such that the base change $e\otimes\mathbb{R}$ is a rotationally symmetric form with the corresponding Hermitian form being positive-definite.




## Complex Torus, Albanese variety
Given $g\in\mathbb{N}_+$ and a full lattice $\Lambda\in\mathbb{C}^g$ (of rank $2g$, that is, )
