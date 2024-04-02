// This file contains your Data Connector logic
[Version = "1.0.0"]
section ExcelBI;

[DataSource.Kind="ExcelBI", Publish="ExcelBI.Publish"]
shared ExcelBI.Contents = (optional message as text) =>
    let
        _message = if (message <> null) then message else "(no message)",
        a = "Hello from ExcelBI: " & _message
    in
        a;

// Data Source Kind description
ExcelBI = [
    Authentication = [
        // Key = [],
        // UsernamePassword = [],
        // Windows = [],
        Anonymous = []
    ]
];

// Data Source UI publishing description
ExcelBI.Publish = [
    Beta = true,
    Category = "Other",
    ButtonText = { Extension.LoadString("ButtonTitle"), Extension.LoadString("ButtonHelp") },
    LearnMoreUrl = "https://powerbi.microsoft.com/",
    SourceImage = ExcelBI.Icons,
    SourceTypeImage = ExcelBI.Icons
];

ExcelBI.Icons = [
    Icon16 = { Extension.Contents("ExcelBI16.png"), Extension.Contents("ExcelBI20.png"), Extension.Contents("ExcelBI24.png"), Extension.Contents("ExcelBI32.png") },
    Icon32 = { Extension.Contents("ExcelBI32.png"), Extension.Contents("ExcelBI40.png"), Extension.Contents("ExcelBI48.png"), Extension.Contents("ExcelBI64.png") }
];
