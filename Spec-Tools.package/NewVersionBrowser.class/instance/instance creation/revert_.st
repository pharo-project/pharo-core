revert: aChangeRecord

	aChangeRecord 
		ifNil: [self inform: 'nothing selected, so nothing done']
		ifNotNil: [ class ifNotNil: [ class compile: aChangeRecord sourceCode classified: aChangeRecord category withStamp: aChangeRecord stamp notifying:nil]].
	
	browser 
		messages: self buildChangeList;
		setSelectedIndex: 1.