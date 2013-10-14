baselineIssue40: spec 
	<version: 'Issue40-baseline'>
	
	spec for: #common do: [
		spec repository: 'dictionary://Metacello_Gofer_Test_Repository'.
		spec 
			package: 'GoferFoo';
			package: 'GoferBar' with: [
				spec repository: 'dictionary://Metacello_Configuration_Test_Alternate_Repository' ];
			yourself ].
