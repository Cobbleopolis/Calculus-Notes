scripts = Select[FileNames["*", FileNameJoin[{Directory[], "Mathematica"}], Infinity], DirectoryQ]
Print[scripts]
exec[dir_] := (
    SetDirectory[dir]
    FileSystemMap[Get, dir]
)
Map[exec, scripts]
