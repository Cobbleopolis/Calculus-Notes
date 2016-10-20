f[x_] = Sin[x]
p1 = Plot[{f[x], f'[x]}, {x, -4, 4}, PlotRange -> {-4, 4}, PlotRangeClipping -> True, PlotLegends -> "Expressions"]
Export["derivOfSin.pdf", p1]
