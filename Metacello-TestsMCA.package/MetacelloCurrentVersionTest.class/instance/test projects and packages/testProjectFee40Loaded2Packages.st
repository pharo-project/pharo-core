testProjectFee40Loaded2Packages

	| version cv fum projectFie projectFee foo feaux |
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

	version := projectFee version: '4.0'.
	version load: #('GeauxFaux' 'GeauxBeau').

	self assertProject: foo expectedVersionString: nil expectedFidelity: nil.
	self assertProject: feaux expectedVersionString: nil expectedFidelity: nil.
	self assertProject: projectFie expectedVersionString: nil expectedFidelity: nil.
	self assertProject: projectFee expectedVersionString: '4.0' expectedFidelity: #loadedToSpec.
	self assertProject: fum expectedVersionString: '4.0' expectedFidelity: #loadedToSpec.
