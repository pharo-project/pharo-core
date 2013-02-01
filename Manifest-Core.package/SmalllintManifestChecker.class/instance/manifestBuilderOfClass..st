accessing
manifestBuilderOfClass: aClass
	| key |
	
	key := aClass category .
	
	^ manifestClassCache at: key 
		ifAbsent: [manifestClassCache at: key put: (BuilderManifest on: aClass).
			manifestClassCache at: key ] 