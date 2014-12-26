revert: aChangeRecord
	aChangeRecord 
		ifNil: [self inform: 'nothing selected, so nothing done']
		ifNotNil: [ rgMethod realClass compile: aChangeRecord sourceCode classified: aChangeRecord category withStamp: aChangeRecord stamp notifying:nil].
		
	"reinitialize me"	
	rgMethod := rgMethod realClass >> (rgMethod selector).

	browser 
		messages: self buildChangeList;
		setSelectedIndex: 1.