graph = Graphics[{
    Circle[{0, 0}, 3],
    Arrow[{{-3, 0}, {3, 0}}],
    Arrow[{{3, 0}, {-3, 0}}],
    Text[Style["d", FontSize -> 18], {0, 0}, {0, -1}]
}]
Export["Practice4_1_1.pdf", graph]

ladderGraph = Plot[1.5 x + 3, {x, -2, 0}, Ticks -> None]
ladderLabels = Graphics[{
   Text["x", {-1, 0}, {0, 1}],
   Text["y", {.05, 1.5}, {-1, 0}],
   Arrow[{{-1.1, -.1}, {-1.5, -.1}}]
   }]
ladderShow = Show[{ladderGraph, ladderLabels}, PlotRange -> All]
Export["Example4_1_0_2.pdf", ladderShow]
