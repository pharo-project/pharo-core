testFileTreeGetConfigurationBasicSpecXXX
    "avoid resolving to BaselineOf .... use basicSpec"

    | project basicSpec expected |
    [ 
    project := Metacello new
        configuration: 'ExternalXXX';
        repository: 'filetree://' , configurationDirectory fullName;
        get.
    basicSpec := (project version: '0.9.0') basicSpec ]
        on: MetacelloErrorInProjectConstructionNotification
        do: [ :ex | ex resume: true ].
    expected := 'spec blessing: #''development''.
spec description: ''MetacelloScriptingResource>>versionOfXXX:''.
spec author: ''dkh''.
spec timestamp: ''5/4/2012 14:16''.
spec baseline: ''External'' with: [
		spec repository: ''github://dalehenrich/external:' , MetacelloScriptingResource externalCustomSHA , '/repository'' ].'.
    self assert: basicSpec printString = expected