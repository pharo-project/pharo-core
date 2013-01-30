*Tools-Browser
browseMessageList: messageList name: labelString autoSelect: autoSelectString
	"Create and schedule a MessageSet browser on the message list."
	| title aSize methods |
	
	"Do not show trait methods"
	methods := messageList reject: [ :each| each isFromTrait ].
	
	methods size = 0 ifTrue: 
		[^ self inform: 'There are no ', String cr, labelString].

	methods size == 1
		ifTrue: [ ^ methods first browse ].

	title := labelString, ' [', aSize printString, ']'.
		
	^ Smalltalk tools messageList
		openMessageList: methods 
		name: title 
		autoSelect: autoSelectString