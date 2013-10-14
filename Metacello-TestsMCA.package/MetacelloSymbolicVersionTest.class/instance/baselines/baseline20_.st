baseline20: spec 
	<version: '2.0-baseline'>
	
	spec for: #common do: [
		spec blessing: #baseline.
		spec 
			project: 'Symbolic' with: [
				spec
					className: 'MetacelloTestConfigurationOfSymbolic';
					repository: 'dictionary://Metacello_Configuration_Test_Repository' ];
			yourself ].
