construction
add: aString action: aMessageSend
	| item |
	item := self addMenuItem.
	item label: aString.
	item action: aMessageSend.
	^item