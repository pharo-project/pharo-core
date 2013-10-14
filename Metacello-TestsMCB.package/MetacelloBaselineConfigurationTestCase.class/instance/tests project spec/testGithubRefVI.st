testGithubRefVI
  "configuration:with:"

  | version expected repo |
  repo := MetacelloScriptingResource current externalRepository.
  Gofer new
    repository: repo;
    package: 'BaselineOfGithubRefVI';
    load.
  version := (Smalltalk at: #'BaselineOfGithubRefVI') project version.
  expected := 'spec description: ''MetacelloScriptingResource>>configurationGithubReferenceXXX:''.
spec configuration: ''External'' with: [
		spec
			versionString: ''0.9.0'';
			repository: ''http://ss3.gemtalksystems.com/ss/external'' ].'.
  self assert: version versionSpec printString = expected