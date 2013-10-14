baseline20: spec 
	<version: '2.0-baseline'>
	
	spec for: #common do: [
		spec repository: 'dictionary://Metacello_Gofer_Test_Repository'.
		spec repository: 'dictionary://Metacello_Configuration_Test_Alternate_Repository'.
		spec 
			package: 'GoferFoo';
			package: 'GoferBar';
			yourself ].
