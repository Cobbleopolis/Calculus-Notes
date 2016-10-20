scripts = Select[FileNames["*", FileNameJoin[{Directory[], "Mathematica"}], Infinity], DirectoryQ]
SetOptions[Plot, BaseStyle -> {FontFamily -> "LM Roman 10", FontSize -> 12}]
SetOptions[Plot, LabelStyle -> {FontFamily -> "LM Roman 10", FontSize -> 18}]
SetOptions[Plot, AspectRatio -> 1]
SetDirectory[Directory[]]
exec[dir_] := (
    FileSystemMap[Function[file, (
        ResetDirectory[]
        SetDirectory[FileNameJoin[{"images", Part[StringSplit[dir, "Mathematica\\"], -1], FileBaseName[file]}]]
        Get[file]
    )], dir]
)
Map[exec, scripts]
