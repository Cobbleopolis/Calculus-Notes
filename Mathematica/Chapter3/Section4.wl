ivtGraph[x_] = CubeRoot[x - 3]
ivtGraphArrow = Arrow[{{5.5, -1}, {3.5, -0.2}}]
ivtGraphText = Text["Have to cross x-axis to \nconnect (a, f(a)) to (b, f(b))", {5.75, -1.1}, {-1, 0}]
ivtGraphPlot = Plot[ivtGraph[x], {x, 2, 8},
    PlotRange -> {{0, 11}, {-1.5, 2}},
    PlotRangeClipping -> False,
    Ticks -> {{{2, "a"}, {8, "b"}}, {{ivtGraph[2], "f(a)"}, {ivtGraph[8], "f(b)"}}},
    Epilog -> {
        ivtGraphArrow,
        ivtGraphText
    }
]
Export["ivtGraph.pdf", ivtGraphPlot]

newtonsMethod[x_] = .5 x^2 - 3
newtonsMethodC = {8, 8 - (newtonsMethod[8] / newtonsMethod'[8])}
newtonsMethodPlot = Plot[newtonsMethod[x], {x, 0, 10},
    Epilog -> {
        PointSize[Large], Point[{2.5, 0}],
        Text[Style["The root", FontSize -> 18], {2.4, 0.5}, {1, -1}],
        (*c1*)
        ColorData[1][2], PointSize[Large], Point[{Part[newtonsMethodC, 1], 0}],
        Text[Style[ToString[Subscript[c, 1], StandardForm], FontSize -> 24], {8, 0}, {0, 1}],
        Dashed, Line[{{8, 0}, {8, newtonsMethod[8]}}],
        (*c2*)
        ColorData[1][3], PointSize[Large], Point[{Part[newtonsMethodC, 2], 0}],
        Text[Style[ToString[Subscript[c, 2], StandardForm], FontSize -> 24], {Part[newtonsMethodC, 2], 0}, {0, 1}],
        Dashed, Line[{{Part[newtonsMethodC, 2], 0}, {Part[newtonsMethodC, 2], newtonsMethod[Part[newtonsMethodC, 2]]}}],
        (*c3*)
        ColorData[1][4], PointSize[Large], Point[{(Part[newtonsMethodC, 2] - (newtonsMethod[Part[newtonsMethodC, 2]] / newtonsMethod'[Part[newtonsMethodC, 2]])), 0}],
        Text[Style[ToString[Subscript[c, 3], StandardForm], FontSize -> 24], {(Part[newtonsMethodC, 2] - (newtonsMethod[Part[newtonsMethodC, 2]] / newtonsMethod'[Part[newtonsMethodC, 2]])), 0}, {0, 1}],
        Dashed, Line[{{(Part[newtonsMethodC, 2] - (newtonsMethod[Part[newtonsMethodC, 2]] / newtonsMethod'[Part[newtonsMethodC, 2]])), 0}, {Part[newtonsMethodC, 2] - (newtonsMethod[Part[newtonsMethodC, 2]] / newtonsMethod'[Part[newtonsMethodC, 2]]), newtonsMethod[Part[newtonsMethodC, 2] - (newtonsMethod[Part[newtonsMethodC, 2]] / newtonsMethod'[Part[newtonsMethodC, 2]])]}}]
    },
    Ticks -> None
]
newtonsMethodPlotDeriv = MapIndexed[
  Plot[newtonsMethod'[#1] x + (newtonsMethod[#1] - newtonsMethod'[#1] #1) , {x, 0, 10},
    PlotStyle -> ColorData[1][First[#2] + 1], Ticks -> None] &, newtonsMethodC]
Export["newtonsMethod.pdf", Show[newtonsMethodPlot, newtonsMethodPlotDeriv]]
