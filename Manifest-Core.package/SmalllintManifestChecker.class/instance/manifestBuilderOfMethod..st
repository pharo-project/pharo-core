accessing
manifestBuilderOfMethod: aMethod

	| key cl |
	
	cl := aMethod methodClass.
		
	key := cl name,   aMethod category asString.
	^ manifestClassCache at: key 
		ifAbsent: [manifestClassCache at: key put: (BuilderManifest on: aMethod).
			manifestClassCache at: key ] 