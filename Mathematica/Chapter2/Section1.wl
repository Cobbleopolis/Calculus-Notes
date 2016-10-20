s[t_] = 5 - t ^ 2
p1 = Plot[s[t], {t, -4, 4}]
Export["answer.pdf", p1]
