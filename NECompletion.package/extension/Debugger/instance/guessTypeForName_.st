guessTypeForName: aString 
	| index object |
	index := self selectedContext tempNames
		indexOf: aString
		ifAbsent: [ nil ].
	object := index isNil
		ifFalse: [ self selectedContext namedTempAt: index ]
		ifTrue: [
			index := self receiver class allInstVarNames
				indexOf: aString
				ifAbsent: [ ^ super guessTypeForName: aString ].
			self receiver instVarAt: index ].
	^ object class
