baseline11: spec 
	<version: '1.1-baseline'>
	
	spec for: #common do: [
		spec repository: 'dictionary://Metacello_Gofer_Test_Repository'.
		spec 
			package: 'GoferFoo' with: [
				spec 
					preLoadDoIt: #preloadExecute;
					postLoadDoIt: #postloadExecute ];
			yourself ].
