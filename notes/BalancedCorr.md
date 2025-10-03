## Notions

- *Balanced on the left*: $\Sigma\in\mathrm{CH}(X,Y)$ being supported on $Z\times Y$ where $Z\subset X$ has a positive codimension

- *Balanced on the right*: symmetrically

- *Balanced*: $\Sigma=\Sigma'+\Sigma''$ where $\Sigma'$ balanced on the left and $\Sigma''$ balanced on the right

- Balanced correspondences $\mathrm{BCH}(X,X)\subset\mathrm{CH}(X,X)$ forms an ideal. (Fulton p.309)

- $\Sigma\in\mathrm{CH}(X,Y)$ being *essential*: not torsion (not in the kernel of base changing to $\mathbb{Q}$), not balanced, and not numerically trivial on $X\times Y$ (although I do not remember why numerically trivial matters)

- $\Delta\in\mathrm{CH}^0(X,X)$ is *integrally essentially decomposable*: $\Delta=\Lambda+\Xi$ where $\Lambda$ and $\Xi$ both being essential. Furthermore, if $\Lambda\circ\Xi=\Xi\circ\Lambda=0$, the motive $M(X)$ is said to be *integrally essentially indecomposable*.

- $c_0(X)$ is defined to be $\mathrm{CH}_0(X_{K(X)})$ modulo the subgroup of $\mathrm{CH}_0(X_{K(X)})$ of cycles which do not map to the generic point of $\mathrm{CH}_0(X)$. Namely, $\mathbf{t}^{n-1}\mathrm{CH}_0(X_{K(X)})$ where $n=\dim X$.

Note that $c_0(X)$ admits a ring structure. To see, identify $X_{K(X)}$ as taking the generic fibre of the first term of $X\times X$. Therefore we have a "spread out" of $\mathrm{CH}_0(X_{K(X)})$ to $\mathrm{CH}_0(X\times X)$. The point is 

$$ \frac{\mathrm{CH}_n(Y\times X)}{\mathrm{BCH}_n(Y\times X)}\rightarrow\frac{\mathrm{CH}_0(X_{K(Y)})}{\mathbf{t}^{n-1}\mathrm{CH}_0(X_{K(Y)})} $$

where $n=\dim Y$. By restricting to the generic fibre of $Y$ we have the morphism between the numerators; if a cycle is balanced on the left, then no wonder it would vanish under the morphism; otherwise should the cycle be balanced on the right, the image lies therefore in $\mathbf{t}^{n-1}\mathrm{CH}_0(X_{K(Y)})$ (why?) so 

- $\mathrm{CH}_0(X)$ is said to be *integrally essentially decomposable* if 

