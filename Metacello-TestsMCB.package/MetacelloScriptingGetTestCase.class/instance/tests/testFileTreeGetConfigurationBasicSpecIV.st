testFileTreeGetConfigurationBasicSpecIV
    "avoid resolving to BaselineOf .... use basicSpec"

    | project basicSpec expected |
    project := Metacello new
        configuration: 'ExternalIV';
        repository: 'filetree://' , configurationDirectory fullName;
        get.
    basicSpec := (project version: '0.9.0') basicSpec.
    expected := 'spec blessing: #''development''.
spec description: ''MetacelloScriptingResource>>baselineOfIV:''.
spec author: ''dkh''.
spec timestamp: ''5/4/2012 14:16''.
spec baseline: ''ExternalX'' with: [
		spec repository: ''dictionary://Metacello_Configuration_Test_Repository'' ].'.
    self assert: basicSpec printString = expected