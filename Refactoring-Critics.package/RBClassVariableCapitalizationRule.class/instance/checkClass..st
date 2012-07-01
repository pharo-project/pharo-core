running
checkClass: aContext 
	aContext selectedClass isMeta
		ifTrue: [ ^ self ].
	aContext selectedClass classVarNames do: [ :each | 
		each first isUppercase ifFalse: [
			result 
				addClass: aContext selectedClass
				classVariable: each ] ].
	aContext selectedClass poolDictionaryNames do: [ :each | 
		each first isUppercase ifFalse: [ 
			result 
				addClass: aContext selectedClass
				classVariable: each ] ]