baseline20: spec 
	<version: '2.0-baseline'>
	
	spec for: #common do: [
		spec 
			package: 'GoferFoo' with: [spec repository: 'dictionary://Metacello_Gofer_Test_Repository' ];
			package: 'GoferBar' with: [spec repository: 'dictionary://Metacello_Gofer_Test_Repository' ];
			package: 'GoferFaux' with: [spec repository: 'dictionary://Metacello_Gofer_Test_Repository' ];
			yourself ].
