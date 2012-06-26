*Tools-Browser
browseMessageList: messageList name: labelString autoSelect: autoSelectString
	"Create and schedule a MessageSet browser on the message list."
	| title aSize ml |

	messageList size = 0 ifTrue: 
		[^ self inform: 'There are no
' , labelString].

	title := (aSize := messageList size) > 1
		ifFalse:	[labelString]
		ifTrue:	[ labelString, ' [', aSize printString, ']'].
		
	^ Smalltalk tools messageList
		openMessageList: messageList 
		name: title 
		autoSelect: autoSelectString