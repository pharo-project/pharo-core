browseVersionsForClass: aClass selector: aSelector 
	| method |
	aSelector ifNil: [ ^self ].
	aClass ifNil: [ ^self ].
	method := (aClass compiledMethodAt: aSelector) ifNil: [ ^self ].
	
	^ self new
		browseVersionsOf: method
		class: aClass
		meta: aClass isMeta
		category: method category
		selector: aSelector