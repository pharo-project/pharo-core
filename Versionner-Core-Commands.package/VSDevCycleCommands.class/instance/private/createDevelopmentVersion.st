createDevelopmentVersion
	| workflow newDevVersionString |
	
	workflow := target.
	newDevVersionString := UIManager default
		request: 'No development version found!' , Character cr asString ,
					'Version number for the next development version'
		initialAnswer: 1.0
		title: 'Create a development version'.
	newDevVersionString ifNotNil: [ workflow createNextDevelopment: newDevVersionString ]