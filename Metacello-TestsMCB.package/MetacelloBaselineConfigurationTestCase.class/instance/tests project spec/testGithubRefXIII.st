testGithubRefXIII
    "baseline:with: and className: and project:copyFrom:with:"

    | version expected repo |
    repo := MetacelloScriptingResource current externalRepository.
    Gofer new
        repository: repo;
        package: 'BaselineOfGithubRefXIII';
        load.
    version := (Smalltalk at: #'BaselineOfGithubRefXIII') project version.
    expected := 'spec description: ''MetacelloScriptingResource>>baselineGithubReferenceVII:''.
spec 
	baseline: ''External Core'' with: [
		spec
			className: ''BaselineOfExternal'';
			loads: #(''Core'' );
			repository: ''github://dalehenrich/external:1ac58502ade7814e1590f71d615cca434b1a4fd5/repository'' ];
	project: ''External Tests'' copyFrom: ''External Core'' with: [
		spec loads: #(''Tests'' ) ].'.
    self assert: version versionSpec printString = expected