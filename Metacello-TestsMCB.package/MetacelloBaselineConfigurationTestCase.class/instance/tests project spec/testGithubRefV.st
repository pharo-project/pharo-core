testGithubRefV
    "configuration:with:"

    | version expected repo |
    repo := MetacelloScriptingResource current externalRepository.
    Gofer new
        repository: repo;
        package: 'BaselineOfGithubRefV';
        load.
    version := (Smalltalk at: #'BaselineOfGithubRefV') project version.
    expected := 'spec description: ''MetacelloScriptingResource>>configurationGithubReferenceXX:''.
spec configuration: ''External'' with: [
		spec
			versionString: ''0.9.0'';
			repository: ''github://dalehenrich/external:' , MetacelloScriptingResource externalConfigurationSHA
        , '/repository'' ].'.
    self assert: version versionSpec printString = expected