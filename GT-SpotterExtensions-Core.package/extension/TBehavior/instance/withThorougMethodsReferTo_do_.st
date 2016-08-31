withThorougMethodsReferTo: aLiteral do: aBlock
	| specialIndex |
	specialIndex := Smalltalk specialSelectorIndexOrNil: aLiteral.
	self selectorsAndMethodsDo: [ :selector :method | 
		(method hasSelector: aLiteral specialSelectorIndex: specialIndex)
					ifTrue: [ aBlock value: method ] ].