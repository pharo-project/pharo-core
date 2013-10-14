testFoe40AllLoadedDefaultPackageNamesToLoad

	| version fum projectFie projectFee projectFoe foo feaux packageNames |
	gofer
		package: 'MetacelloTestConfigurationOfFum'; 
		package: 'MetacelloTestConfigurationOfFoo'; 
		package: 'MetacelloTestConfigurationOfFeaux'; 
		package: 'MetacelloTestConfigurationOfProjectFie'; 
		package: 'MetacelloTestConfigurationOfProjectFee'; 
		package: 'MetacelloTestConfigurationOfProjectFoe'; 
		load.
	fum := (Smalltalk at: #MetacelloTestConfigurationOfFum) new project.
	foo := (Smalltalk at: #MetacelloTestConfigurationOfFoo) new project.
	feaux := (Smalltalk at: #MetacelloTestConfigurationOfFeaux) new project.
	projectFie := (Smalltalk at: #MetacelloTestConfigurationOfProjectFie) new project.
	projectFee := (Smalltalk at: #MetacelloTestConfigurationOfProjectFee) new project.
	projectFoe := (Smalltalk at: #MetacelloTestConfigurationOfProjectFoe) new project.

	version := feaux version: '4.0'.

	packageNames := version defaultPackageNamesToLoad.
	self assert: packageNames size == 2.
	self assert: (packageNames includes: 'GeauxFoo').
	self assert: (packageNames includes: 'GeauxBar').
	packageNames := version defaultPackageNamesToLoad: #( 'GeauxFoo' ).
	self assert: packageNames size == 1.
	self assert: (packageNames includes: 'GeauxFoo').

	version load: 'GeauxFoo'.

	packageNames := version defaultPackageNamesToLoad: #( 'GeauxFoo' ).
	self assert: packageNames size == 1.
	self assert: (packageNames includes: 'GeauxFoo').

	version := projectFoe version: '4.0'.
	version load: #('ALL').

	packageNames := (foo version: '4.0') defaultPackageNamesToLoad.
	self assert: packageNames size == 6.
	self assert: (packageNames includes: 'GoferFoo').
	self assert: (packageNames includes: 'GoferBar').

	packageNames := (foo version: '4.0') defaultPackageNamesToLoad: #().
	self assert: packageNames size == 2.
	self assert: (packageNames includes: 'GoferFoo').
	self assert: (packageNames includes: 'GoferBar').

