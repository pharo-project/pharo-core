baselineMoose: spec 
	<version: '1.0-Moose'>
	
	spec for: #common do: [
		spec repository: 'dictionary://Metacello_Gofer_Test_Repository'.
		spec 
			package: 'GoferFaux' with: [
				spec file: 'GoferFaux-' ];
			yourself ].
