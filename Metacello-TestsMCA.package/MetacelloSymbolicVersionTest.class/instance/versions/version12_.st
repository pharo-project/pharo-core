version12: spec 
	<version: '1.2'>
	
	spec for: #common do: [
		spec repository: 'dictionary://Metacello_Gofer_Test_Repository'.
		spec blessing: #release.
		spec 
			package: 'GoferBeau' with: 'GoferBeau-dkh.53';
			package: 'GoferFaux' with:'GoferFaux-tg.32';
			yourself ].
