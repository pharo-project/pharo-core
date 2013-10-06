fullOnClass: aClass selector: aSelector 

	^ aSelector
		ifNil: [ self openOnClass: aClass ]
		ifNotNil: [| method |
			method := aClass methodDict at: aSelector ifAbsent: [ nil ].
			method ifNotNil: [ self openOnMethod: method ]]