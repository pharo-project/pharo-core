version31: spec 
	<version: '3.1'>
	
	spec for: #common do: [
		spec repository: 'dictionary://Metacello_Gofer_Test_Repository'.
		spec 
			project: '1' with: [
				spec
					preLoadDoIt: #preloadExecute;
					postLoadDoIt: #postloadExecute;
					className: 'MetacelloTestConfigurationOfFoo';
					versionString: '3.0';
					repository: 'dictionary://Metacello_Configuration_Test_Repository' ];
			yourself. ].
