version30: spec 
	<version: '3.0'>
	
	spec for: #common do: [
		spec repository: 'dictionary://Metacello_Gofer_Test_Repository'.
		spec 
			project: '1' with: [
				spec
					className: 'MetacelloTestConfigurationOfFoo';
					versionString: '3.0';
					repository: 'dictionary://Metacello_Configuration_Test_Repository' ];
			yourself. ].
