instance creation
revert: aChangeRecord

	aChangeRecord 
		ifNil: [self inform: 'nothing selected, so nothing done']
		ifNotNil: [ class ifNotNil: [ class compile: aChangeRecord string ]].
	
	browser 
		messages: self buildChangeList;
		setSelectedIndex: 1.