duplicateClassWithNewName: aSymbol
	| copysName class newDefinition |
	copysName := aSymbol asSymbol.
	copysName = self name
		ifTrue: [ ^ self ].
	(Smalltalk globals includesKey: copysName)
		ifTrue: [ ^ self error: copysName , ' already exists' ].
	newDefinition := self definition copyReplaceAll: '#' , self name asString with: '#' , copysName asString.
	class := self class compiler source: newDefinition; logged: true; evaluate.
	class classSide instanceVariableNames: self classSide instanceVariablesString.
	class copyAllCategoriesFrom: self.
	class class copyAllCategoriesFrom: self class.
	class comment: self comment stamp: self organization commentStamp.
	^ class