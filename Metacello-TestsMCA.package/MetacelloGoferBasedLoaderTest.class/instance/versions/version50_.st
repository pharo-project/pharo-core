version50: spec 
	<version: '5.0'>
	
	spec for: #common do: [
		spec repository: 'dictionary://Metacello_Gofer_Test_Repository'.
		spec 
			project: '1' with: [
				spec
					className: 'MetacelloTestConfigurationOfFoo';
					versionString: '5.0';
					loads: #('1');
					repository: 'dictionary://Metacello_Configuration_Test_Repository' ];
			project: '2' with: [
				spec
					className: 'MetacelloTestConfigurationOfFoo';
					versionString: '5.0';
					loads: #('2');
					file: 'MetacelloTestConfigurationOfFoo';
					repository: 'dictionary://Metacello_Configuration_Test_Repository' ];
			yourself.

		spec
			group: '4' with: #('1' '2') ].
