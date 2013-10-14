version60: spec
	<version: '6.0'>
	
	spec for: #common do: [
		spec repository: 'dictionary://Metacello_Gofer_Test_Repository'.
		spec 
			project: 'Foo' with: [
				spec
					className: 'MetacelloTestConfigurationOfFix';
					versionString: '6.0';
					repository: 'dictionary://Metacello_Configuration_Test_Repository' ];
			yourself ].
