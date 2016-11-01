(* ::Package:: *)

ivtGraph[x_] := CubeRoot[x - 3]
ivtGraphPlot = Plot[ivtGraph[x], {x, 2, 8},
    PlotRange -> {{0, 11}, {-1.5, 2}},
    PlotRangeClipping -> False,
    Ticks -> {{{2, "a"}, {8, "b"}}, {{ivtGraph[2], "f(a)"}, {ivtGraph[8], "f(b)"}}},
    Epilog -> {
        Arrow[{{5.5, -1}, {3.5, -0.2}}],
        Text["Have to cross x-axis to \nconnect (a, f(a)) to (b, f(b))", {5.75, -1.1}, {-1, 0}],
        PointSize[Large], ColorData[1][1], Point[{{2, ivtGraph[2]}, {8, ivtGraph[8]}}]
    }
]
Export["ivtGraph.pdf", ivtGraphPlot]

NewtonMethod[f_, c_, n_] := Nest[N[# - (f[#] / f'[#])]&, c, n - 1]
newtonsMethodGraph[x_] := .5 x^2 - 3
newtonsMethodC = Table[NewtonMethod[newtonsMethodGraph, 8, n], {n, 3}]
newtonsMethodPlot = Plot[newtonsMethodGraph[x], {x, 0, 10},
    Epilog -> {
        PointSize[Large], Point[{2.5, 0}],
        Text[Style["The root", FontSize -> 18], {2.4, 0.5}, {1, -1}],
        Table[
            {
                ColorData[1][n + 1], PointSize[Large], Point[{{newtonsMethodC[[n]], 0}, {newtonsMethodC[[n]], newtonsMethodGraph[newtonsMethodC[[n]]]}}],
                Text[Style[ToString[Subscript[c, n], StandardForm], FontSize -> 24], {newtonsMethodC[[n]], 0}, {0, 1}],
                Dashed, Line[{{newtonsMethodC[[n]], 0}, {newtonsMethodC[[n]], newtonsMethodGraph[newtonsMethodC[[n]]]}}],
            }, {n, 3}
        ]
    },
    Ticks -> None
]

newtonsMethodPlotDeriv = MapIndexed[
  Plot[newtonsMethodGraph'[#1] x + (newtonsMethodGraph[#1] - newtonsMethodGraph'[#1] #1) , {x, 0, 10},
    PlotStyle -> ColorData[1][First[#2] + 1], Ticks -> None] &, newtonsMethodC]
Export["newtonsMethod.pdf", Show[newtonsMethodPlot, newtonsMethodPlotDeriv]]
