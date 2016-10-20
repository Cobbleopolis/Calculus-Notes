f[x_] = x^3 + 3x^2
p1 = Plot[{f[x], f'[x]}, {x, -4, 4}, PlotRange -> {-4, 4}, PlotRangeClipping -> True, PlotLegends -> {ToExpression["f\\left(x\\right)", TeXForm, HoldForm], ToExpression["f'\\left(x\\right)", TeXForm, HoldForm]}]
Export["test.pdf", p1]
