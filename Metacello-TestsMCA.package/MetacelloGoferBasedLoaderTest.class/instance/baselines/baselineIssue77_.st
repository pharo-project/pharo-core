baselineIssue77: spec 
	<version: 'Issue77-baseline'>
	
	spec for: #common do: [
		spec repository: 'dictionary://Metacello_Gofer_Test_Repository'.
		spec 
			project: 'B' with: [
				spec
					className: 'MetacelloTestConfigurationOfIssue77B';
					versionString: '1.0';
					repository: 'dictionary://Metacello_Configuration_Test_Repository' ];
			project: 'D' with: [
				spec
					className: 'MetacelloTestConfigurationOfIssue77D';
					versionString: '1.0';
					repository: 'dictionary://Metacello_Configuration_Test_Repository' ];
			yourself ].
