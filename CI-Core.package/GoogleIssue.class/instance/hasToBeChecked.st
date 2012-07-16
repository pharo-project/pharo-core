checking
hasToBeChecked
	|date newestComment|
	
	self hasFix ifFalse: [ ^ false ].
	
	self flag: 'uuugly hardcoding of the user...'.
	(self newestComment author name == 'pharo.ulysse') ifTrue: [ ^ false ].
	
	newestComment := self newestCommentFrom: 'pharo.ulysse'.
	newestComment ifNil: [ ^ true ].
	
	date := self hasSlice 
		ifTrue: [ self slice date ]
		ifFalse: [ 
			(self changeSets detectMax: [ :each| each published]) published ].

	^ date > newestComment updated