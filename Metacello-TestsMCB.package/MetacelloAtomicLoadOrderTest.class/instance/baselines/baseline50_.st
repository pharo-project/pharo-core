baseline50: spec 
	<version: '5.0-baseline'>
	
	spec for: #common do: [
		spec 
			project: 'UmbrellaA' with: [
				spec
					className: 'MetacelloTestConfigurationOfUmbrellaA';
					versionString: '5.0';
					repository: 'dictionary://Metacello_Configuration_Test_Repository' ];
			project: 'UmbrellaB' with: [
				spec
					className: 'MetacelloTestConfigurationOfUmbrellaB';
					versionString: '5.1';
					repository: 'dictionary://Metacello_Configuration_Test_Repository' ];
			yourself ].
