dropInPackageList: aCollection inARow: aRow
	| receiver |
	
	(aRow = 0) ifTrue: [ ^ self ].
	receiver := self getPackagesList at: aRow.
	receiver isClass
		ifTrue: [ 
			receiver := 
			self model selectedClass isMeta
					ifTrue: [ receiver theMetaClass ]
					ifFalse: [ receiver theNonMetaClass ]].
	
	self model dropInAPackage: aCollection into: receiver