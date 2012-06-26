tool registration
openMessageList: messageList name: aString autoSelect: aSelector
	" Tool registry compitibility "

	| title |
	aString last = $]
			ifTrue: [ title := aString substrings allButLast joinUsing: ' ' ]
			ifFalse: [ title := aString ].
			
	(aString beginsWith: 'Senders')
		ifTrue: [ ^ (self browseSenders: messageList of: aSelector named: title) openWithSpec ].
	
	(aString beginsWith: 'Implementors')
		ifTrue: [ ^ (self browseImplementors: messageList of: aSelector named: title) openWithSpec ].
	
	^ (self on: messageList named: title autoSelect: aSelector) openWithSpec