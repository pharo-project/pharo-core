openMessageList: messageList name: aString autoSelect: aSelector refreshingBlockSelector:aRefreshingBlockSelector
	" Tool registry compitibility "
				
	^ (self on: messageList named: aString autoSelect: aSelector refreshingBlockSelector:aRefreshingBlockSelector) open