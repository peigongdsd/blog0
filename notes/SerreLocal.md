# Local Algebra

## Regular sequence and regular immersions
[067M](https://stacks.math.columbia.edu/tag/067M). A sequence $(f_1,\cdots, f_r)$ in a ring $R$ is said to be *regular* if 

- $f_i$ is a nondivisor of $R/(f_1,\cdots,f_{i-1})$,
- $R/(f_1,\cdots,f_r)\not=0$.

The second requirement induces that no $f_i$ can be invertible. There are weaker properties a sequence can hold, and they're independent on the indexing. For a sequence $(f_1,\cdots,f_r)$ in $R$, the *Koszul complex* is defined to be the complex

$$ 0\rightarrow\wedge^r R^r\rightarrow\cdots\rightarrow\wedge^2 R^r\rightarrow\wedge^1 R^r\rightarrow\wedge^0 R^r\rightarrow 0 $$

where the morphism $d:\wedge^1 R^r=R^r\rightarrow R=\wedge^0 R^r$ is defined to be $d(e_i)=f_i$, and the higher differentials are defined to be 

$$ d(e_1\wedge\cdots\wedge e_n)=\sum(-1)^{i-1}f_k e_1\wedge\cdots\hat{e_k}\cdots\wedge e_n. $$

A sequence is said to be *Koszul-regular* if the Koszul complex attached to which is exact, and to be $H_1$-regular if the Koszul complex attached to which is exact at $\wedge^2\rightarrow\wedge^1\rightarrow\wedge^0$.



## V.7 Pull-backs

### Definition

$f:X\rightarrow Y$ be a morphism between varieties, with $Y$ non-singular, and  $x$ and $y$ be cycles on $X$ and $Y$ resp. Set $|x|=Supp(x)$, then 

$$ dim|x|\cap f^{-1}(|y|)\geq dim|x| - codim|y|. $$

This is [0AZN](https://stacks.math.columbia.edu/tag/0AZN). If the equality holds, then one defines $x\cdot_fy$ with support contained in $|x|\cap f^{-1}(|y|)$ by either one of the following methods:

- Reduction to a standard intersection: Assume $X$ being affine (locally, and at least separable), then embed $X$ in an affine space $V$. The graph morphism embeds $X$ into $V\times Y$, and sends a cycle $x$ on $X$ to $\gamma(x)$ on $V\times Y$. Then one defines $x\cdot_fy$ as the unique cycle on $X$ s.t.

$$ \gamma(x\cdot_fy)=\gamma(x)\cdot (V\times y). $$

The intersection product being calculated on the non-singular scheme $V\times Y$. 

*INDEPENDENT ON THE CHOSEN EMBEDDING* check later!

- Homological computation: Choose coherent sheaves $\mathcal{M}$ and $\mathcal{N}$ over $X$ and $Y$, representing $x$ and $y$ respectively. Then define $x$

### Exercises 1) functorial property of pull-backs
