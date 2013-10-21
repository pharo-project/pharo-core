dropInList: aCollection inARow: aRow
	| receiver |
	
	(aRow = 0) ifTrue: [ ^ self ].
	receiver := self getList at: aRow.
	receiver isClass
		ifTrue: [ self selectedClass isMeta
					ifTrue: [ receiver := receiver theMetaClass ]
					ifFalse: [ receiver := receiver theNonMetaClass ]].
	
	self dropInAPackage: aCollection into: receiver