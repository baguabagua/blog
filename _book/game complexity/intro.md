很久之前就从网络上听说过一些游戏的计算复杂性，后来在计算理论课上又听说了一些，但没有仔细看过。最近打算认真读一下相关的论文并放在这里。

一些相关资料：

1. 一个会议 International Conference on Fun with Algorithms（FUN），只要和 FUN 以及算法有关就都可以投，但游戏复杂性的文章占了很大一部分。两三年一届，最近的一次是在2022年。
2. MIT的公开课6.890 Algorithmic Lower Bounds: Fun with Hardness Proofs （[链接1](https://courses.csail.mit.edu/6.890/fall14/)或[链接2](https://ocw.mit.edu/courses/6-890-algorithmic-lower-bounds-fun-with-hardness-proofs-fall-2014/)）中教授了大量关于谜题和游戏的计算复杂性结论和证明方法，教师是 Prof. Erik Demaine。Demaine 自己发了非常多的游戏复杂性相关的文章，下面还会多次看到。
3. 一个网站 [Computational Complexity of Games and Puzzles](https://ics.uci.edu/~eppstein/cgt/hard.html) ，有很多游戏复杂性的信息和参考文献。

比较感兴趣的游戏：

1. 推箱子。推箱子对很多解谜游戏有比较大的启发意义，以致于类推箱成了电子解谜游戏的一个大类。推箱子本身是 PSPACE-COMPLETE 的，最早被 Culberson [1] 在 1997 年证明，证法是用推箱子模拟线性空间的图灵机。后来 Hearn 和 Demaine [2] 在 2005 年提出了一个新的 PSPACE-complete 的问题叫 NCL (Nondeterministic Constraint Logic) 并给出了另一个证法即把 NCL 归约到推箱子。这里提到这个后来的证明是因为 NCL 的归约更简单一些，也被一些后来的游戏复杂性证明所采用（比如雪人难堆 [3]），因此想要了解一下。
2. Recursed. 本身是我接触解谜游戏社群之后玩的第二款解谜游戏（第一款是见证者），有很多令人惊奇的机制但是又很自然，有些关卡在关卡自身很简单的同时解法非常复杂（如 [Elevator](https://www.bilibili.com/video/BV1nJ411n72Y?p=8)）。Recursed 被 Demaine 等人证明是图灵不可解的 [4]. 这个游戏能达到这么高复杂度的一个原因（必要条件）是游戏的状态数是无限的，最简单的一种情形就是你可以无限次跳入同一个箱子，因为每次的层数都不同所以都是不同的状态。证法是把 PCP 归约到 Recursed，其中 PCP 是一个经典的图灵不可解问题。
3. Braid. 被 Hamilton 证明是图灵不可解的 [5] 。Braid 简单来说就是一个带时间回溯的平台跳跃游戏，同时有能和时间回溯交互的其它机制。Braid 当然也满足状态的无限性，因为你的没有回溯的过去可以有任意长，相当于你在 Recursed 里面处在任意深的位置。这篇论文我没有看过，比较好奇他的处理方式。有一个同样是无限状态的游戏 [Tres Undos](https://knexator.itch.io/tres-undos)，玩法上是带时间回溯的推箱子，感觉有点像 Braid，感觉也有希望是图灵不可解的。这个游戏不太出名，应该还没人证过。
4. 十四种扫雷变体。在知乎上看见过[分析](https://zhuanlan.zhihu.com/p/646689958)，可惜作者写了个序言就鸽了。

参考文献：

[1] J. Culberson. Sokoban is PSPACE-complete (draft). Technical Report TR 97-02, Department of Computer Science, University of Alberta, 1997. Also available from [http://web.cs.ualberta.ca/˜joe/ Preprints/Sokoban/paper.html](http://web.cs.ualberta.ca/˜joe/ Preprints/Sokoban/paper.html).

[2] R.A. Hearn, E.D. Demaine. PSPACE-completeness of sliding-block puzzles and other problems through the nondeterministic constraint logic model of computation. Theoretical Computer Science 343 (2005) 72–96.

[3] W. He, Z. Liu and C Yang. SNOWMAN is PSPACE-complete. Theoretical Computer Science 677 (2017) 31-40.

[4] E.D. Demaine, J. Kopinsky and J. Lynch. Recursed is not Recursive: A Jarring Result. arXiv:2002.05131, 2020. [https://arXiv.org/abs/2002.05131](https://arXiv.org/abs/2002.05131).

[5] L. Hamilton. Braid is undecidable. arXiv:1412.0784, 2014. [https://arXiv.org/abs/1412.0784](https://arXiv.org/abs/1412.0784).