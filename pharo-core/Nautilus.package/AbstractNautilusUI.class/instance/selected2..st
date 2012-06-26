accessing
selected2: anInteger
	| selection |
	
	selection := self getList2 at: anInteger ifAbsent: [nil].
	
	self showInstance ifFalse: [selection ifNotNil: [selection := selection theMetaClass]].
	self selectedClassWithoutChangingSelection: selection.
	
	self changed: #selected2.
	self changed: #currentHistory.