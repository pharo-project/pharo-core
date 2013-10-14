testFeaux40Loaded

	| version fum projectFie projectFee foo feaux |
	gofer
		package: 'MetacelloTestConfigurationOfFum'; 
		package: 'MetacelloTestConfigurationOfFoo'; 
		package: 'MetacelloTestConfigurationOfFeaux'; 
		package: 'MetacelloTestConfigurationOfProjectFie'; 
		package: 'MetacelloTestConfigurationOfProjectFee'; 
		load.
	fum := (Smalltalk at: #MetacelloTestConfigurationOfFum) new project.
	foo := (Smalltalk at: #MetacelloTestConfigurationOfFoo) new project.
	feaux := (Smalltalk at: #MetacelloTestConfigurationOfFeaux) new project.
	projectFie := (Smalltalk at: #MetacelloTestConfigurationOfProjectFie) new project.
	projectFee := (Smalltalk at: #MetacelloTestConfigurationOfProjectFee) new project.

	version := fum version: '4.0'.
	version load: #('Feaux').

	self assertProject: foo expectedVersionString: nil expectedFidelity: nil.
	self assertProject: feaux expectedVersionString: '4.0' expectedFidelity: #allLoadedToSpec.
	self assertProject: projectFie expectedVersionString: '4.0' expectedFidelity: #loadedToSpec.
	self assertProject: projectFee expectedVersionString: nil expectedFidelity: nil.
	self assertProject: fum expectedVersionString: '4.0' expectedFidelity: #loadedToSpec.
