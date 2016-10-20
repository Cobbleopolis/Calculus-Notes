p1 = Plot[{Sqrt[4 - x^2], -Sqrt[4 - x^2]}, {x, -4, 4}, PlotRange -> {{-4, 4}, {-4, 4}}, PlotRangeClipping -> True, PlotLegends -> "Expressions"]
Export["Example3_2_0_1.pdf", p1]
