baseline60: spec 
	<version: '6.0-baseline'>
	
	spec for: #common do: [
		spec repository: 'dictionary://Metacello_Gofer_Test_Repository'.
		spec 
			project: 'Foo' with: [
				spec
					className: 'MetacelloTestConfigurationOfLinearFoo';
					versionString: '6.0';
					loads: '1';
					repository: 'dictionary://Metacello_Configuration_Test_Repository' ];
			project: 'Issue86' with: [
				spec
					className: 'MetacelloTestConfigurationOfProjectIssue86';
					versionString: '6.0';
					loads: 'A';
					repository: 'dictionary://Metacello_Configuration_Test_Repository' ];
			yourself.
		spec
			package: 'GeauxFoo' with: [
				spec 
					file: 'GeauxFoo-lr.1';
					requires: #('Foo') ];
			package: 'GeauxBeau' with: [
				spec 
					file: 'GeauxBeau-dkh.55';
					requires: #('GeauxFoo' 'Issue86') ];
			yourself ].
