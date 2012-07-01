*Tools-Browser
browseMessageList: messageList name: labelString autoSelect: autoSelectString
	"Create and schedule a MessageSet browser on the message list."
	| title aSize ml |

	messageList size = 0 ifTrue: 
		[^ self inform: 'There are no 
' , labelString].

	messageList size == 1
		ifTrue: [ ^ messageList first browse ].

	title := labelString, ' [', aSize printString, ']'.
		
	^ Smalltalk tools messageList
		openMessageList: messageList 
		name: title 
		autoSelect: autoSelectString