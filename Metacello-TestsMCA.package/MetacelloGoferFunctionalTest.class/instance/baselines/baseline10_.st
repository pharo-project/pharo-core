baseline10: spec 
	<version: '1.0-baseline'>
	
	spec for: #common do: [
	spec repository: 'dictionary://Metacello_Gofer_Test_Repository'.
		spec 
			package: 'GoferFoo';
			package: 'GoferBar';
			package: 'GoferFaux';
			yourself ].
