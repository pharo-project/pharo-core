baseline10: spec 
	<version: '1.0-baseline'>
	
	spec for: #common do: [
		spec repository: 'dictionary://Metacello_Repository'.
		spec blessing: #baseline.
		spec 
			package: 'GoferBar';
			package: 'GoferFoo';
			yourself ].
