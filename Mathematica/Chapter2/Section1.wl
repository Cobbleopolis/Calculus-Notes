SetDirectory[FileNameJoin[{ParentDirectory[ParentDirectory[]], "Chapter2"}]]
p1 = Plot[Sin[x], {x, 0, 10}]
Export["test.png", p1]
