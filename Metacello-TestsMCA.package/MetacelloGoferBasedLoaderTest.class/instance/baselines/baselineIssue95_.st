baselineIssue95: spec 
	<version: 'Issue95-baseline'>
	
	spec for: #common do: [
		spec repository: 'dictionary://Metacello_Gofer_Test_Repository'.
		spec 
			project: 'Issue95' with: [
				spec
					className: 'MetacelloTestConfigurationOfProjectIssue95';
					versionString: '4.0';
					repository: 'dictionary://Metacello_Configuration_Test_Repository' ];
			yourself ].
