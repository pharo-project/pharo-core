version63: spec
	<version: '6.3'>
	
	spec for: #common do: [
		spec repository: 'dictionary://Metacello_Gofer_Test_Repository'.
		spec 
			package: 'GoferFoo' with: 'GoferFoo-lr.4';
			package: 'GoferBar' with: 'GoferBar-lr.1';
			package: 'GoferBeau' with: 'GoferBeau-dkh.53';
			package: 'GoferFaux' with: 'GoferFaux-tg.31';
			yourself. ].
