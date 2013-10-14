baseline10: spec 
	<version: '1.0-baseline'>
	
	spec for: #common do: [
		spec repository: 'dictionary://Metacello_Gofer_Test_Repository'.
		"using #atomic loadType means that package order isn't important ... 
			linear load order is GoferBar, GoferBeau, GoferFoo
			to test atomic load order, force an incorrect load order - which shouldn't matter for atomic loads"
		spec 
			package: 'GoferBar';
			package: 'GoferFoo' with: [ spec requires: 'GoferBar' ];
			package: 'GoferBeau' with: [ spec requires: 'GoferFoo' ];
			yourself ].
