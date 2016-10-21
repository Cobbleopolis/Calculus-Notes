graph = Graphics[{
    Circle[{0, 0}, 3],
    Arrow[{{-3, 0}, {3, 0}}],
    Arrow[{{3, 0}, {-3, 0}}],
    Text[Style["d", FontSize -> 18], {0, 0}, {0, -1}]
}]
Export["Practice4_1_1.pdf", graph]
