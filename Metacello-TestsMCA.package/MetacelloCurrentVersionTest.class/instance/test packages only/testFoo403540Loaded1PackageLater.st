testFoo403540Loaded1PackageLater

	| version cv fum projectFie projectFee foo feaux repo |
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

	repo := self monticelloRepository.

	version := foo version: '4.0'.
	version load: #('1' ).
	
	self assertProject: foo expectedVersionString: '4.0' expectedFidelity: #loadedToSpec.
	self assertProject: feaux expectedVersionString: nil expectedFidelity: nil.
	self assertProject: projectFie expectedVersionString: '4.0' expectedFidelity: #loadedToSpec.
	self assertProject: projectFee expectedVersionString: nil expectedFidelity: nil.
	self assertProject: fum expectedVersionString: '4.0' expectedFidelity: #loadedToSpec.

	"Load partial exact match to 3.5"
	Gofer it
		repository: repo;
		version: 'GoferBeau-dkh.54'; 
		version: 'GoferFoo-lr.1'; 
		metacelloLoad.

	self assertProject: foo expectedVersionString: '3.5' expectedFidelity: #loadedToSpec.
	self assertProject: feaux expectedVersionString: nil expectedFidelity: nil.
	self assertProject: projectFie expectedVersionString: '3.5' expectedFidelity: #loadedToSpec.
	self assertProject: projectFee expectedVersionString: nil expectedFidelity: nil.
	self assertProject: fum expectedVersionString: nil expectedFidelity: nil.

	"reload version 4.0"
	version load: '1'.

	self assertProject: foo expectedVersionString: '4.0' expectedFidelity: #loadedToSpec.
	self assertProject: feaux expectedVersionString: nil expectedFidelity: nil.
	self assertProject: projectFie expectedVersionString: '4.0' expectedFidelity: #loadedToSpec.
	self assertProject: projectFee expectedVersionString: nil expectedFidelity: nil.
	self assertProject: fum expectedVersionString: '4.0' expectedFidelity: #loadedToSpec.

	"Later package version matches constraints"
	Gofer it
		repository: repo;
		version: 'GoferFaux-tg.34'; 
		metacelloLoad.

	self assertProject: foo expectedVersionString: '4.0' expectedFidelity: #loadedMatchConstraints.
	self assertProject: feaux expectedVersionString: nil expectedFidelity: nil.
	self assertProject: projectFie expectedVersionString: '4.0' expectedFidelity: #loadedMatchConstraints.
	self assertProject: projectFee expectedVersionString: nil expectedFidelity: nil.
	self assertProject: fum expectedVersionString: '4.0' expectedFidelity: #loadedMatchConstraints.
