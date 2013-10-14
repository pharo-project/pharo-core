baseline20: spec 
	<version: '2.0-baseline'>
	
	spec for: #common do: [
		spec repository: 'dictionary://Metacello_Repository'.
		spec 
			package: 'GoferBar' with: [
				spec file: 'GoferBar.gemstone' ];
			yourself ].
