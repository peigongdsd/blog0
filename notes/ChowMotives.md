(Covariant) Chow Motives and Voevodsky Motives Review

===

Only in setting of Chow motives, that is, the fixed adquate equivalance relationship is rational equivalance.

# Correspondence and the category of (covariant) effective motives

For varieties $X$ and $Y$ smooth projective over $k$, $\mathrm{Corr}^0(X,Y)$ is defined as $\mathrm{CH}^{\dim X}(X\times Y)\otimes\mathbb{Q}$ (Here $\mathbb{Q}$ is the ring of coefficients, we can also choose other rings). The category of *effective pure motives* is modelled on the set of pairs $(X,p)$ where $p\in\mathrm{Corr}^0{X,X}$ is a projector (which cuts out a direct summand of the object $(X,id_X)$), with morphism between objects defined as $$
  \mathrm{Hom}((X,p),(Y,q))=q\circ\mathrm{Corr}^0(X,Y)\circ p\in\mathrm{Corr}^0(X,Y).
$$
Additionally, we have the *projective bundle formula*, in short which implies ([TSP 02TY](https://stacks.math.columbia.edu/tag/02TY)) for an affine bundle over a variety $$
  p:E=\mathrm{Spec}_X(\mathrm{Sym}^*(\mathcal{E}))\rightarrow X
$$
we have $$
  p^*:\mathrm{CH}^i(X)\rightarrow\mathrm{CH}^i(E)
$$
is an isomorphism.

We now give a decomposition of the motive of $\mathbb{P}^1$. Note that $$
  \mathrm{Corr}^0(\mathbb{P}^1,\mathbb{P}^1)=\mathrm{CH}^1(\mathbb{P}^1\times\mathbb{P}^1)\otimes\mathbb{Q}
$$
has two special elements, namely $$
\begin{aligned}
  c_0=[0\times\mathbb{P}^1]\\
  c_1=[\mathbb{P}^1\times 0].
\end{aligned}
$$
By simple calculation we have $$
\begin{aligned}
  c_0\circ c_0&=c_0\\
  c_2\circ c_2&=c_2\\
  c_0\circ c_2&=0\\
  c_2\circ c_0&=0\\
\end{aligned}
$$
furthermore $$
  id_{\mathbb{P}^1}=[\Delta]=c_0+c_2
$$
so $$

# Pure Motives

# Embedding into Voevodsky's Mixed Motives


# Chow-Kunneth Decomposition 