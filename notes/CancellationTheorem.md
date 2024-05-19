The ultimate goal of this note is to read *Cancellation Theorem* by V.Voevodsky, 2010.

# Relative cycles

## Preliminaries

### Some definitions
Let $X$ be Noetherian. Denoty by $Cycl(X)$ (resp. $Cycl^{eff}(X)$) the free abelian group (resp. monoid) of cycles on $X$. For a cycle $\mathcal{Z}\in Cycl(X)$ denote by $supp(\mathcal{Z})$ the support of such a cycle, considered as a reduced closed subscheme of $X$. Define by $cycl_X(\bullet)$ the function sending a closed subscheme $Z$ of $X$ to the corresponding element in $Cycl^{eff}(X)$, in the obvious way. There is a natually defined flat pullback satisfying $p^*cycl_S(Z)=cycl_X(p^{-1}Z)$ for $p:X\rightarrow S$ flat, which is then injective provided by $p$ being surjective. 

### 2.3.2
(Lemma) For $X/k$ of finite type and a finite *normal* field extension $k'/k$ with Galois group $G$, we can descend a cycle $\mathcal{Z}'\in Cycl(X_{k'})^G$ to a cycle (with potentially rational coefficients) $(1/[k':k]_{insep})\mathcal{Z}$ such that $[k':k]_{insep}\mathcal{Z}'=\mathcal{Z}\otimes_k k'$. 

Proof. We may just assume that $X$ is a finitly generated (maybe transcedental) field over $k$. We shall now investigate the tensor product $X\times_k k'$. By elementary field theory we know that 

- there is an intermediate Galois extension $k'/k_0/k$,
- and we can decompose the purely inseparable extension $k'/k_0$ into a tower with every two adjacent items be like

$$ (k_i[x]/(x^p-\alpha))/k_i $$

where $\alpha\in k_i$ has no $p$th roots.

Now we need only the statement hold for Galois extensions and *simple* purely inseparable extensions. The case for a Galois extension is kinda obvious. Consider the tensor product $k'\otimes_k K$ where $k'$ is the field get by adding the $p$th root of $\alpha\in k$. We claim that

- if there is a $p$th root in $K$, namely $\beta$, then the tensor product is isomorphic to $K[x]/(x-\beta)^p$,
- otherwise the tensor product still has only one point in the meaning of being a scheme.

The first statement is straightforward, and to see the second one just add such a root to $K$ to get $K_0$. We know then the tensor product of $k'\times_k K$ with $K_0$ has only one point, which means that the former term cannot has more than two points. Moreover this tensor product must be a field instead of an Artinian algebra with nilpotents. 

### 2.3.3
(Corollary) In the preceding assumptions and notations the homomorphism

$$ Cycl(X)[1/p]\rightarrow (Cycl(X_{k'})[1/p])^G $$
 
is an isomorphism.

### Proper definition of a non-flat pullback

## Relative Cycles

We know that being flat over a DVR (even an arbitary valuation ring) is equivalent to being torsion-free. So we may extend the notion of a *flat supported cycle*, which behaves quite well in doing pullpacks, to the notion of a *relative cycle*, which is defined by testing using DVRs.

### 3.1.1
(Definition) Let $S$ be Noetherian, and $x:k\rightarrow S$ be a $k$-point. A fat point over $x$ is a triple $(x_0,x_1,R)$ where $R$ is a DVR and ... well just see the illustration

```rawlatex
\begin{tikzcd}
	k && X_0 \\
	& {R_0} & {X_\eta} \\
	& {R_\eta.}
	\arrow["x", from=1-1, to=1-3]
	\arrow["{x_0}"', from=1-1, to=2-2]
	\arrow["{x_1}"{description}, from=2-2, to=1-3]
	\arrow[dashed, from=2-3, to=1-3]
	\arrow[dashed, from=3-2, to=2-2]
	\arrow["{x_1}"{description}, from=3-2, to=2-3]
\end{tikzcd}
```

### 3.1.2

