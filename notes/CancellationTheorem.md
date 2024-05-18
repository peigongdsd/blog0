The ultimate goal of this note is to read *Cancellation Theorem* by V.Voevodsky, 2010.

# Relative cycles

## Preliminaries

### Some definitions
Let $X$ be Noetherian. Denoty by $Cycl(X)$ (resp. $Cycl^{eff}(X)$) the free abelian group (resp. monoid) of cycles on $X$. For a cycle $\mathcal{Z}\in Cycl(X)$ denote by $supp(\mathcal{Z})$ the support of such a cycle, considered as a reduced closed subscheme of $X$. Define by $cycl_X(\bullet)$ the function sending a closed subscheme $Z$ of $X$ to the corresponding element in $Cycl^{eff}(X)$, in the obvious way. There is a natually defined flat pullback satisfying $p^*cycl_S(Z)=cycl_X(p^{-1}Z)$ for $p:X\rightarrow S$ flat, which is then injective provided by $p$ being surjective. 

### 2.3.2
(Lemma) For $X/k$ of finite type and a finite *normal* field extension $k'/k$ with Galois group $G$, we can descend a cycle $\mathcal{Z}'\in Cycl(X_{k'})^G$ to a cycle (with potentially rational coefficients) $(1/[k':k]_{insep})\mathcal{Z}$ such that $[k':k]_{insep}\mathcal{Z}'=\mathcal{Z}\otimes_k k'$. 

Proof. We may just assume that $X$ is a finitly generated (maybe transcedental) field over $k$. We shall now investigate the tensor product $X\times_k k'$. By elementary field theory we know that 

- there is an intermidiate Galois extension $k'/k_0/k$,
- and we can decompose the purely inseparable extension $k'/k_0$ into a tower with every two adjacent items be like

$$ k_i[x]/(x^p-\alpha)/k_i $$

where $\alpha\in k_i$ has no $p$th roots.

Now we need only the statement hold for Galois extensions and *simple* purely inseparable extensions.

### Proper definition of a non-flat pullback
