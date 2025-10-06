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

where $n=\dim Y$. By restricting to the generic fibre of $Y$ we have the morphism between the numerators; if a cycle is balanced on the left, then no wonder it would vanish under the morphism; otherwise should the cycle be balanced on the right, the image lies therefore in $\mathbf{t}^{n-1}\mathrm{CH}_0(X_{K(Y)})$ 

```rawlatex
\begin{tikzcd}
	{\mathrm{CH}_0(X_{K(Y)})} & {\mathrm{CH}_*(X)} \\
	{\mathrm{CH}_n(Y\times X)}
	\arrow["prj", from=1-1, to=1-2]
	\arrow["fiber", from=2-1, to=1-1]
\end{tikzcd}
```

Looking at these groups, if a cycle on $\mathrm{CH}_n(Y
\times X)$ is balanced on the right (but not left, or would vanish after fiber base change), after projection it would go to a non-generic point of $X$, therefore get mod out by $\mathbf{t}^{n-1}\mathrm{CH}_0(X_{K(Y)})$. 

- As a result, there is a properly defined ring structure on $c_0(X)$. The multiplcative unit $\mathbb{1}\in c_0(X)$ is the diagonal in $\mathrm{CH}_n(X\times X)$ modulo balanced cycles.

- $\mathrm{CH}_0(X)$ is said to be *integrally essentially decomposable* if $\mathbb{1}$ is a sum of two orthogonal non-torsion idempotents in $c_0(X)$. The point is **non-torsion** though I do not know why at this time.

- Implication: $M(X)$ is integrally essentially decomposable => $\mathrm{CH}_0(X)$ is integrally essentially decomposable. In fact, in $M(X)$, $\Delta$ therefore equals to $\Lambda+\Xi$, and since these components are essential (not balanced), the equiation modulos to $\mathbb{1}=\lambda+\xi$ in $c_0(X)$. However, the inverse does not hold: idempotents can be not liftable from $c_0(X)$ to $\mathrm{CH}_n(X\times X)$, since balanced correspondences are not necessarily nilpotent.

- Chow-Kunneth decomposition: under rational coefficients, it is already known that motives of varieties of dimension at least $2$ admits a decomposition, nemaly

$$ M(X)=h^0\oplus h^1\oplus h^+\oplus h^{2d-1}\oplus h^{2d} $$

where $d=\dim X$. (Add later arguments for $h^i$ all being balanced)

- Property: the essential decomposability of $c_0(X)$ (that is, $\mathrm{CH}_0(X)$), is a birational invariant of $X$ (e.g. we can do resolution of singularities). In fact, since $c_0(X)$ is equal to $\mathrm{CH}_n(X\times X)$ modulo $\mathrm{BCH}_n(X\times X)$, we care only about the cycles lying over $K(X)\times K(X)$. This also suggests that any "balanced" terms in the ring involves some lower dimension subvarieties, hence we are having the "essential" motive under birational equivalance.

- For example, for the category of algebraic curves, (add later, Jacobian not decomposable)

## Transcendental components of motives of surfaces

Now we are looking at the paper by B. Kahn, J.P. Murre and C. Pedrini. We outline the main results of that paper here, namely

$$\mathrm{End}_{\mathbb{Q}}(h_{tr}^2(S))=\frac{A_2(S\times S)}{BA_2(S\times S)}=\frac{T(S_{k(S)})}{\mathbf{t}^{1}T(S_{k(S)})}$$

which is closedly related the techniques we are using here. Here $T(S)$ is the albanese kernel.

Let's construct the Chow-Kunneth decomposition of an algebraic surface $S$, and further break down the essential motive $h^2(S)$ to "algebraic" and "transcendental" part.

### Construction of $h^0$, $h^1$, $h^{2n-1}$ and $h^{2n}$

For an algebraic variety $X/k$ of dimension $n$ with a rational point $x_0$, $h^0$ and $h^{2n}$ are just defined by $[x_0\times X]$ and $[X\times x_0]$. 

Fix a projective embedding of $X$, therefore we could talk about what cycles are "linear". Choose a smooth linear cycle $C$ of dimension $1$ in $X$ (up to base change since we can always descend, dive into the actual descending later), and a hyperplane (linear also) section $H$ of $X$. Say $H$ and $C$ meets at $Z$, which admits a class in $\mathrm{CH}_0(X)$. Denote by $i$ the embedding $C\rightarrow X$, by "gysin and push" we have 

```rawlatex
\begin{tikzcd}
	{h(X)} & {h(C)} & {h(X)(n-1)}
	\arrow["{i^*(0)}", from=1-1, to=1-2]
	\arrow["{i_*(n-1)}", from=1-2, to=1-3]
\end{tikzcd}
```
since (let's review the basics!)

- gysin: $i^*=h(i)\in\mathrm{CH}_1(X\times C)=\mathrm{CH}^0(X, C)$
- push: $i_*=h(i)^t\in\mathrm{CH}_1(C\times X)=\mathrm{CH}^{n-1}(C, X)$


The functoriality of the Picard and Albanese varieties defines a composite homomorphism

$$P_X\rightarrow P_C\xrightarrow{\sim} J_C\rightarrow J_X$$

intepretion: for a line bundle in $P_X$, taking the intersection with $C$ sends which to a zero cycle, as a point on the Albanese of $X$. The real magic thing is such a morphism is an isogeny (Weil, dig later). Choose an inverse $\beta:J_X\rightarrow P_X$ such that $\alpha\circ\beta=[\cdot n]$.

Therefore, $\beta$ corresponds to a cycle $\tilde{\beta}\in A^1(X\times X)=\mathrm{CH}_{\mathbb{Q}}^{n-1}(X,X)=\mathrm{Hom}()$

***






### Intermediate: $h^2=h_{ns}^2\oplus h_{tr}^2$




## The Refined Chow-Kunneth Decomposition