version20: spec 
	<version: '2.0' imports: #('2.0-baseline') >
	
	spec for: #common do: [
		spec repository: 'dictionary://Metacello_Gofer_Test_Repository'.
		"using #atomic loadType means that package order isn't important"
		spec 
			project: 'GoferFoo' with: '2.0';
			yourself.
		spec 
			package: 'GoferBar' with: 'GoferBar-dkh.1';
			package: 'GoferFaux' with: 'GoferFaux-tg.30';
			package: 'GoferBeau' with: 'GoferBeau-dkh.15';
			yourself ].
