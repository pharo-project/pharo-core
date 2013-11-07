openMessageList: messageList name: aString autoSelect: aSelector refreshingBlockSelector:aRefreshingBlockSelector
	" Tool registry compitibility "

	| title |
	aString last = $]
			ifTrue: [ title := aString substrings allButLast joinUsing: ' ' ]
			ifFalse: [ title := aString ].
				
	^ (self on: messageList named: title autoSelect: aSelector refreshingBlockSelector:aRefreshingBlockSelector) openWithSpec