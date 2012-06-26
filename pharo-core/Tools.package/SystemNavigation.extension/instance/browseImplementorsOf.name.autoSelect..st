*Tools-Browser
browseImplementorsOf: aSelector name: labelString autoSelect: autoSelectString
	"Create and schedule a senders browser for aSelector."	
	| implementors title size ml|
	
	implementors := self allImplementorsOf: aSelector.
	implementors size = 0 ifTrue: 
		[^ self inform: 'There are no ' , labelString].
	implementors size = 1 ifTrue: [^  implementors first browse].
	
	title := (size := implementors size) > 1
		ifFalse:	[labelString]
		ifTrue:	[ labelString, ' [', size printString, ']'].
		
	^ Smalltalk tools messageList
		openMessageList: implementors
		name: title
		autoSelect: autoSelectString