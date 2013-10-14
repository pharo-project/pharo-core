testFileTreeGetConfigurationVersionSpecXX
    "resolve to BaselineOf ... use spec or versionSpec"

    | project versionSpec expected |
    project := Metacello new
        configuration: 'ExternalXX';
        repository: 'filetree://' , configurationDirectory fullName;
        get.
    versionSpec := (project version: '0.9.0') versionSpec.
    expected := 'spec blessing: #''development''.
spec description: ''MetacelloScriptingResource>>versionOfXX:''.
spec author: ''dkh''.
spec timestamp: ''5/4/2012 14:16''.
spec baseline: ''External'' with: [
		spec repository: ''github://dalehenrich/external:' , MetacelloScriptingResource externalCustomSHA , '/repository'' ].'.
    self assert: versionSpec printString = expected