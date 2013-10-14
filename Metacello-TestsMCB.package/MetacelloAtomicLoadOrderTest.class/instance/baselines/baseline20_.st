baseline20: spec 
	<version: '2.0-baseline'>
	
	spec for: #common do: [
		spec repository: 'dictionary://Metacello_Gofer_Test_Repository'.
		spec blessing: #baseline.
		"using #atomic loadType means that package order isn't important"
		spec 
			project: 'GoferFoo' with: [ 	"requires: 'GoferBeau'"
				spec
					className: 'MetacelloTestConfigurationOfAtomicFoo';
					versionString: '2.0-baseline';
					loads: 'GoferFoo';
					repository: 'dictionary://Metacello_Configuration_Test_Repository' ];
			yourself.
		spec 
			package: 'GoferBar';
			package: 'GoferFaux' with: [ spec requires: 'GoferFoo' ];
			package: 'GoferBeau'; 	"requires: 'GoferBar'"
			yourself ].
