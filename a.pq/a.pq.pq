// This file contains your Data Connector logic
[Version = "1.0.0"]
section a.pq;

[DataSource.Kind="a.pq", Publish="a.pq.Publish"]
shared a.pq.Contents = (optional message as text) =>
    let
        _message = if (message <> null) then message else "(no message)",
        a = "Hello from a.pq: " & _message
    in
        a;

// Data Source Kind description
a.pq = [
    Authentication = [
        // Key = [],
        // UsernamePassword = [],
        // Windows = [],
        Anonymous = []
    ]
];

// Data Source UI publishing description
a.pq.Publish = [
    Beta = true,
    Category = "Other",
    ButtonText = { Extension.LoadString("ButtonTitle"), Extension.LoadString("ButtonHelp") },
    LearnMoreUrl = "https://powerbi.microsoft.com/",
    SourceImage = a.pq.Icons,
    SourceTypeImage = a.pq.Icons
];

a.pq.Icons = [
    Icon16 = { Extension.Contents("a.pq16.png"), Extension.Contents("a.pq20.png"), Extension.Contents("a.pq24.png"), Extension.Contents("a.pq32.png") },
    Icon32 = { Extension.Contents("a.pq32.png"), Extension.Contents("a.pq40.png"), Extension.Contents("a.pq48.png"), Extension.Contents("a.pq64.png") }
];
