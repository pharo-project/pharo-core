accessing
setTitle: aString
	| string |
	
	string := (user contents isNil or: [ aString isNil ])
					ifTrue: [ 'Editing' ]
					ifFalse: [ 'Editing ', aString, '''s profile' ].
		
	self window
		ifNotNil: [:w | w title: string ]