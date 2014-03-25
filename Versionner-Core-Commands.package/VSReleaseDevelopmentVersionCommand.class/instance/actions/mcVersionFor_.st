mcVersionFor: aVersionString
	| config workflow |
	
	workflow := target.
	config := workflow project configurationClass.
	^ config project version: aVersionString