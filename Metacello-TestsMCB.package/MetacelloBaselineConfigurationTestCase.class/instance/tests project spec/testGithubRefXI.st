testGithubRefXI
    "project:copyFrom:with:"

    | version expected repo |
    repo := MetacelloScriptingResource current externalRepository.
    Gofer new
        repository: repo;
        package: 'BaselineOfGithubRefXI';
        load.
    version := (Smalltalk at: #'BaselineOfGithubRefXI') project version.
    expected := 'spec description: ''MetacelloScriptingResource>>configurationGithubReferenceV:''.
spec 
	project: ''External'' with: [
		spec
			className: ''ConfigurationOfExternal'';
			versionString: ''0.9.0'';
			loads: #(''Core'' );
			repository: ''github://dalehenrich/external:' , MetacelloScriptingResource externalConfigurationSHA
        ,
            '/repository'' ];
	project: ''External Tests'' copyFrom: ''External'' with: [
		spec loads: #(''Tests'' ) ].'.
    self assert: version versionSpec printString = expected