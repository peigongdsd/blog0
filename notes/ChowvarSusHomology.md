Suslin Homology, Chow Varieties, and $h$-topology
===


# Incapability of Zariski/étale topology on modelling Chow sheaves

(This part is essentially nonsense)

For a given scheme $X$ together with a Zariski cover $\{ U_i \to X \}$, any sheaf $\mathscr{F}$ on $X$ should satisfy $$
\mathscr{F}(X)\rightarrow\coprod\mathscr{F}(U_i)\substack{\rightarrow \\ \rightarrow}\coprod\mathscr{F}(U_i\times_X U_j)
$$
where the diagram represents an equalizer.

Now take $C_n(X)$ for $X$ (large site, any scheme over $\mathbb{Z}$) to be the set of points of height $n$ on $X$. Such a presheaf has no chance for becoming a Zariski sheaf or an étale sheaf, since there is no correct restriction $$C_n(X)\rightarrow C_n(U)$$ for point $p\in X$ when $U$ avoids $p$. To mitigate such a problem, a trivial measure is to take not the sheaf of points, but the sheaf of free abelian groups on points of $X$ (or to say, cycles), in which case $p\in X$ restricts to $0$ in $C_n(U)$ when $U$ avoids $p$. However, the sheaf condition still fails. Take $X=\mathbb{P}^1$ and $U=X\backslash\{0\}$, $V=X\backslash\{\infty\}$, we hope the sequence $$
0\rightarrow C_0(X)\rightarrow C_0(U)\times C_0(V)\xrightarrow{u} C_0(U\cap V)
$$
could be exact. However, just note that the

# $qfh$-topology

A morphism of schemes $p: X \to Y$ is called a \emph{topological epimorphism} if the underlying Zariski topological space of $Y$ is a quotient space of the underlying Zariski topological space of $X$ (i.e., $p$ is surjective and a subset $A$ of $Y$ is open if and only if $p^{-1}(A)$ is open in $X$).
$p$ is called a \emph{universal topological epimorphism} if for any $Z \to Y$ the morphism
$$p_Z : X \times_Y Z \to Z$$
is a topological epimorphism.

An h-covering of a scheme $X$ is a \emph{finite family} of morphisms of finite type $\{ p_i : X_i \to X \}$ such that
$$\coprod p_i : \coprod X_i \to X$$
is a universal topological epimorphism.

A qfh-covering of a scheme $X$ is an h-covering $\{ p_i \}$ such that all the morphisms $p_i$ are quasi-finite.

h-coverings (resp. qfh-coverings) define a pretopology on the category of schemes, h-topology (resp. qfh-topology) is the associated topology.

# The transfer map: On [Sus96]
