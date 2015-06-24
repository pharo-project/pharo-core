searchText: aString
	aString isEmptyOrNil ifTrue: [ ^ #() ].
	
	self elements withIndexDo: [ :each :index |
		((self toString: each) beginsWith: aString)
			ifTrue: [ ^ { index } ] ].
	^ #()