# Intersection Theory of Cycles

This part has many references, like Appendix 17A, SerreLocal, etc. This exposure will be based on 17A mainly.

All schemes considered here are (absolutely) seperated. For varieties, fix a base field $k$.

## Intersection operations

### 17A.1 
(Definition) (Serre's tor formula) $X/k$, two closed integral subvarieties $Z_1$ and $Z_2$ are said to *intersect properly* if every component of $Z_1\cap Z_2$ is of codimension no less than $codim(Z_1)+codim(Z_2)$, or $Z_1\cap Z_2=\varnothing$.

If the ambient variety $X$ is regular, the intersection product $Z_1\cdot Z_2$ is defined to be the formal sum $\sum n_i[W_i]$, where the sum is over (the generic point of) irreducible components of $Z_1\cap Z_2$, and $n_i$s are the *intersection multiplcities*, defined as follows. If $A$ is the local ring of $X$ at $W_j$, and $Z_i$ localize to $I_i$, then

$$ n_j=\sum_{k\geq 0}(-1)^k length\ Tor_i^A(A/I_1,A/I_2). $$

If $X/k$ is nonsingular and connected, [0B0Q](https://stacks.math.columbia.edu/tag/0B0Q) says that $\Delta:X\rightarrow X\times_k X$ is a regular immersion of codimension $dim(X)$, and [0AZN](https://stacks.math.columbia.edu/tag/0AZN) says that for a regular immersion $f:X\rightarrow Y$ of codimension $c$ and $Z$ a subvariety of $Y$ of dimension $d$, $f^{-1}(Z)$ has dimension at least $d-c$. Combining these two facts and note that $Z_1\cap Z_2$ is the scheme-theoretic inverse image of $Z_1\times_k Z_2$ under the diagonal $\Delta_X$, $W_j$ cannot be of codimension more than $codim(Z_1)+codim(Z_2)$. In this case, if $Z_1$ and $Z_2$ meets properly, which will be of our main interest sequentially, all of those $W_i$s will be of same codimension (or pure).

For two cycles $\mathcal{V}=\sum m_iV_i$ and $\mathcal{W}=\sum n_jW_j$, where $V_i$s and $W_j$s intersect properly pairwisely, the intersection product $\mathcal{V}\cdot\mathcal{W}$ will be defined as $\sum m_in_j(V_i\cdot W_j)$.

We know that 

$$ \mathcal{M}\otimes_X^L\mathcal{N}\otimes_X\mathcal{O}_{X,x}\rightarrow \mathcal{M}_x\otimes_{\mathcal{O}_{X,x}}^L\mathcal{N}_x $$

is an isomorphism (let $\mathcal{N}$ be flat). As a result, if a point $x$ is not coaintained in the support of $Tor_0^{\mathcal{O}_X}(\mathcal{M},\mathcal{N})$, the length of $\mathcal{M}\otimes^L\mathcal{N}$ at $x$ must be $0$.

### 17A.2 
(Associative law) On a smooth variety $X/k$, $\mathcal{V}_1\cdot (\mathcal{V}_2\cdot\mathcal{V}_3)$ is equal to $(\mathcal{V}_1\cdot\mathcal{V}_2)\cdot\mathcal{V}_3$.

Maybe I'll add a proof here. Later.

### 17A.3
(Definition) (Pullback along a morphism) For $f:X\rightarrow Y$ with $X$ and $Y$ regular, and $\mathcal{Y}$ is a cycle on $Y$ of codimension $i$. We say that $f^*(\mathcal{Y})$ is *defined* if each component of $f^{-1}(Supp(\mathcal(Y)))$. In this case, we define $f^*(\mathcal{Y})$ to be $\Gamma_f\cdot(X\times\mathcal{Y})$, identifying $\Gamma_f$ with $X$. 

### 17A.4
(Example) 



- If $f:X\rightarrow Y$ is flat, $f^*(\mathcal{y})$ is the cycle associated to $f^{-1}(V)$.

This is not so straightforward. Since $X\rightarrow Y$ is flat, $\mu:=id_x\times f:X\times X\rightarrow X\times Y$ is flat. Note that $L\mu^*=\mu^*$ commutes with taking derived tensor product and $\Delta_X\cdot(X\times f^{-1}(\mathcal{y}))$ is just

### Vanishing theorem on wrong codimensions
