selectedMessageName
	"Answer the message selector of the currently selected message, if any. 
	Answer nil otherwise."

	| aList |
	messageListIndex = 0 ifTrue: [^ nil].
	^ (aList := self messageList) size >= messageListIndex
		ifTrue:
			[aList at: messageListIndex]
		ifFalse:
			[nil]