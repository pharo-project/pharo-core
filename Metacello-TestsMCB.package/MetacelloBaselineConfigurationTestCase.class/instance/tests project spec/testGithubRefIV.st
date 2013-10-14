testGithubRefIV
    "project:with:"

    | version expected repo |
    repo := MetacelloScriptingResource current externalRepository.
    Gofer new
        repository: repo;
        package: 'BaselineOfGithubRefIV';
        load.
    version := (Smalltalk at: #'BaselineOfGithubRefIV') project version.
    expected := 'spec description: ''MetacelloScriptingResource>>configurationGithubReferenceX:''.
spec project: ''External'' with: [
		spec
			className: ''ConfigurationOfExternal'';
			versionString: ''0.9.0'';
			repository: ''github://dalehenrich/external:' , MetacelloScriptingResource externalConfigurationSHA
        , '/repository'' ].'.
    self assert: version versionSpec printString = expected