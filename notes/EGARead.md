# IV

## IV.1.9.4
(Definition) Assume $X$ being a topological space. We say a subset $E$ of $X$ is pro-construbtible (resp. ind-construbctible) in $X$ if for any $x\in X$, there is an open neighborhood $U$ of $x$ in $X$ s.t. $E\cap U$ is an intersection (resp. union) of locally constructible subsets of $U$.

## IV.13.1.3 (Chevalley)
(Theorem) Assume $f:X\rightarrow Y$ is a morphism locally of finite type. For any integer $n$, the set $F_n(X)$ of all $x\in X$ such that $dim_x(f^{-1}f(x))\geq n$ is closed. In other words, the function $x\mapsto dim_x(f^{-1}f(x))$ is upper semi-continuous on $X$.

## IV.13.2.1
(Proposition) Take $Y$ to be an irreducible prescheme, and so does $X$, $f:X\rightarrow Y$ a **dominant** morphism locally of finite type. Denote by $\eta$ the generic point of $Y$. We know [13.1.6](#IV.13.1.6) that for any $x\in X$ we have $dim_x(f^{-1}f(x))\geq dim(f^{-1}(\eta))$.

## IV.13.2.2
(Definition) Under the assumptions of [13.2.1](#IV.13.2.1), we say $f$ is equidimensional at point $x$ (or that $X$ is equidimensional over $Y$ at point $x$) if 

$$ dim_x(f^{-1}f(x))\geq dim(f^{-1}(\eta)). $$

We say that $f$ is equidimensional (or that $X$ is equidimensional over $Y$) if $X$ is equidimensional at every point $x\in X$.

## IV.13.3.1
(Proposition) Assume $Y$ be a prescheme, $f:X\rightarrow Y$ be a morphism locally of finite type, $x$ a point of $X$, and $y=f(x)$. Denote by $Y_\alpha$ the irreducible components of $Y$ contaning $y$. Then the following conditions are equivalant:

1. There exist a integer $e$ and an open neighborhood $U$ of $x$ such that the image of $f$ of any irreducible components of $U$ is dense in $Y_\alpha$, furthermore, for any $x'\in U$, the space $U\cap f^{-1}(f(x'))$ is equidimensional of dimension $e$. 

2. There exist a integer $e$ and an open neighborhood $U$ of $x$ such that the image of $f$ of any irreducible components of $U$ is dense in $Y_\alpha$, furthermore, if we denote by $y_\alpha$ the generic points of $Y_\alpha$, any ireducible componenets of the spaces $U\cap f^{-1}(y)$, $U\cap f^{-1}(y_\alpha)$ are of dimension $e$.

3. There exist a integer $e$ and an open neighborhood $U$ of $x$ such that for each of the irreducible componenets $U_\lambda$ of $U$, $f(U_\lambda)$ is dense in $Y_\alpha$ and that for any $x'\in U_\lambda$ the irreducible components of $U_\lambda\cap f^{-1}(f(x'))$ all have dimension $e$. 

4. There exist an integer $e$, an open neighborhood $U$ of $x$ and a quasi-finite morphism $g:U\rightarrow Y\otimes_\mathbb{Z}\mathbb{Z}[T_1,\cdots,T_e]$ (prescheme which we will also denote $Y[T_1,\cdots,T_e]$ for brevity) over $U$ such that the image of $g$ of any irreducible componenet of $U$ is dense in a irreducible componenet of $Y[T_1,\cdots,T_e]$.

## IV.13.3.2
(Definition) Assume $Y$ is a prescheme, $f:X\rightarrow Y$ a morphism locally of finite type, and $x$ a point of $x$. We say that $f$ is equidimensional at point $x$ (or $X$ is equidimensional over $Y$ at point $x$) if the equivalant conditions of [13.3.1](#IV.13.3.1) hold. We say that $f$ is equidimensional (or $X$ is equidimensional over $Y$) if $f$ is equidimensional at every point $x\in X$.

## IV.14.4.4 (Chevalley's criterion)
(Corollory) Assume $f:X\rightarrow Y$ is a morphism locally of finite type.

1. Suppose $f$ is equidimensional at a point $x\in X$ ([13.3.2](#IV.13.3.2)) and if $y=f(x)$ is point thats is geomterically unibranch in $Y$, then $f$ is universaly open at point $x$.

2. If $Y$ is geometrically unibarnch, then $f$ is universaly open at all points of $X$ where $f$ is equidimensional, and the set of all those points is open in $X$. In particular, if $X$ is equidimensional, it is universally open.
