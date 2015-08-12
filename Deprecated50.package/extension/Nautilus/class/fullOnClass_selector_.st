fullOnClass: aClass selector: aSelector
	self deprecated: 'use openOnClass:selector:' on: ' 11 August 2015' in: 'Pharo5'.
	^ aSelector
		ifNil: [ self openOnClass: aClass ]
		ifNotNil: [| method |
			method := aClass methodDict at: aSelector ifAbsent: [ ^ self openOnClass:aClass ].
			method ifNotNil: [ self openOnMethod: method ]]