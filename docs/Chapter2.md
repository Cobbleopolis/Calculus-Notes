<script src="/js/Chapter2.js"></script>
#Chapter 2 <span class="subtitle">The Derivative</span>

## Rates of Change and The Derivative
A particle's rectlinear (1D) motion has its position defined by the function $s(t) = 5 - t^2$, where $s$ is measured in meters and $t$ in seconds.

1. Sketch the graph of the function on the interval from $t = 0$ to $t = 4$.
2. Find the *average* velocity over the time interval from $t = 0$ to $t = 4$. On your graph, draw what this quantity represents.
3. Aproximate the *instantanieous* velocity when $t = 2$ by finding the average velocity over the intervals $t = 2$ to $t = 3$, $t = 2$ to $t = 2.5$, and $t = 2$ to $t = 2.1$
4. Write a general expression that represents the average velocity over the intervals from $t = 2$ to $t = 2 + h$.
5. Find the instantaneous velocity when t = 2 by finding the limit of the expression as $h \to 0$.

##### Answers

1. <div class="graph" id="ch2AnswersQ1"></div>
2. &nbsp;
  $$
    \begin{gather*}
        \frac{\Delta s}{\Delta t} \\
        \frac{s(4) - s(0)}{4 - 0} \\
        \frac{\left(5 - 4^2\right) - \left(5 - 0^2\right)}{4} \\
        \frac{-11 - 5}{4} \\
        -4[m/s]
    \end{gather*}
  $$
3. &nbsp;
    - $t = 2$ to $t = 3$:
      $$
        \begin{gather*}
            \frac{s(3) - s2)}{3 - 2} \\
            \frac{\left(5 - 3^2\right) - \left(5 - 2^2\right)}{1} \\
            -5[m/s]
        \end{gather*}
      $$
    - $t = 2$ to $t = 2.5$:
      $$
        \begin{gather*}
            \frac{s(2.5) - s(2)}{2.5 - 2} \\
            \frac{\left(5 - 2.5^2\right) - \left(5 - 2^2\right)}{0.5} \\
            -4.5[m/s]
        \end{gather*}
      $$
    - $t = 2$ to $t = 2.1$:
      $$
        \begin{gather*}
            \frac{s(2.1) - s(2)}{2.1 - 2} \\
            \frac{\left(5 - 2.1^2\right) - \left(5 - 2^2\right)}{0.1} \\
            -5[m/s]
        \end{gather*}
      $$
  *Guess*: velocity at $t = 2$ is approximately $4[m/s]$.
4. &nbsp;
  $$
    \begin{gather*}
        \frac{s(2 + h) - s(2)}{2 + h - 2} \\
        \frac{\left(5 - \left(2 + h\right)^2\right) - \left(5 - 2^2\right)}{h} \\
        \frac{5 - (4 + 4h + h^2) - (1)}{h} \\
        \frac{-4h - h^2}{h} \\
        -4 - h
    \end{gather*}
  $$
5. &nbsp;
  $$
    \begin{gather*}
        \lim_{h \to 0}\left(\frac{s(2 + h)- s(2)}{h}\right) \\
        \lim_{h \to 0}\left(-4 - h\right) \\
        -4 - 0 \\
        -4
    \end{gather*}
  $$
