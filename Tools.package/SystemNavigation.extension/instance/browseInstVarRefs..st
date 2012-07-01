*Tools-Browser
browseInstVarRefs: aClass
	
	^ self chooseInstVarFrom: aClass thenDo: 
		[:aVar | self browseAllAccessesTo: aVar from: aClass]