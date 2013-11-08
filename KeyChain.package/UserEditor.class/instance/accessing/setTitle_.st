setTitle: aString
	| string |
	
	string := (user value isNil or: [ aString isNil ])
					ifTrue: [ 'Editing' ]
					ifFalse: [ 'Editing ', aString, '''s profile' ].
		
	self window
		ifNotNil: [:w | w title: string ]