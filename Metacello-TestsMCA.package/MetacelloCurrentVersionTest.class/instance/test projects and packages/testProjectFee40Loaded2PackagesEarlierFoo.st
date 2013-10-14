testProjectFee40Loaded2PackagesEarlierFoo

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
	version := foo version: '2.0'.
	version load: #('ALL').

	self assertProject: foo expectedVersionString: '2.0' expectedFidelity: #allLoadedToSpec.
	self assertProject: feaux expectedVersionString: nil expectedFidelity: nil.
	self assertProject: projectFie expectedVersionString: nil expectedFidelity: nil.
	self assertProject: projectFee expectedVersionString: '4.0' expectedFidelity: #somethingLoaded.
	self assertProject: fum expectedVersionString: nil expectedFidelity: nil.
