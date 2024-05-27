# Limits and colimits in $\infty$-category

## Initial objects in $\infty$-category

In the context to simplicial sets, denote by $Fun(X,Y)$ the morphism space from $X$ to $Y$. We say that a pair of maps $f$ and $g$, viewed as edges of $Fun(X,Y)$ are homotopic if they belong to the same connected somponent of $Fun(X,Y)$. A pair of maps $f:X\rightarrow Y$ and $g:y\rightarrow X$ are called homotopy inverse if $f\circ g$ and $g\circ f$ are homotopic to the identity morphisms respectively. In this case we say that $f:X\rightarrow Y$ is a homotopy equivalance. Let $X$ be a simplicial set, we say that $X$ is contactible if the projection map $X\rightarrow\Delta^0$ is a homotopy equivalance. 

### 3.2.4.3
(Theorem) Let $X$ be a Kan complex. The following conditions are equivalant

- $X$ is contractible.
- $X$ is connected and *then homotopy groups* $\pi_n(X,x)$ vanish for each $n>0$ and every choice of base point $x\in X_0$.
- $X$ is connected and *then homotopy groups* $\pi_n(X,x)$ vanish for each $n>0$ and some base point $x\in X_0$.
- The projection map $X\rightarrow\Delta^0$ is a trivial Kan fibration (1.1.5.5) of simplicial sets.

Let $\mathcal{C}$ be an $\infty$-category. We say that an object $Y\in\mathcal{C}$ is *initial* if for every object $Z\in\mathcal{C}$, the morphism space $Hom_\mathcal{C}(Y,Z)$ is a conractible Kan complex, *final* is $Hom_\mathcal{C}(Z,Y)$ is a contractible Kan complex. 

### 4.6.7.11
(Corollary) Let $X$ be a Kan complex and let $x\in X$ be a vertex. The following conditions are equivalent

- $x$ is initial,
- $x$ is final,
- $X$ is contractible.


