dropInClass: aCollection inARow: aRow
	| receiver |
	receiver := self getClassesList at: aRow.
	self model showInstance not
		ifTrue: [ receiver := receiver theMetaClass ]
		ifFalse: [ receiver := receiver theNonMetaClass ].
	self model dropInAClass: aCollection into: receiver