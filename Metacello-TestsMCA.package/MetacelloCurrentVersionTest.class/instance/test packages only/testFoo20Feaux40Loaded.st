testFoo20Feaux40Loaded

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

	version := fum version: '4.0'.
	version load: #('Feaux').
	version := foo version: '2.0'.
	version load: #('ALL').

	self assertProject: foo expectedVersionString: '2.0' expectedFidelity: #allLoadedToSpec.
	self assertProject: feaux expectedVersionString: '4.0' expectedFidelity: #allLoadedToSpec.
	self assertProject: projectFie expectedVersionString: nil expectedFidelity: nil.
	self assertProject: projectFee expectedVersionString: nil expectedFidelity: nil.
	self assertProject: fum expectedVersionString: nil expectedFidelity: nil.