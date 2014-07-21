browseMessageList: messageList name: labelString autoSelect: autoSelectString refreshingBlockSelector:aRefreshingBlockSelector
	"Create and schedule a MessageSet browser on the message list."
	| title methods |
	
	"Do not show trait methods"
	methods := messageList reject: [ :each| each isFromTrait ].
	
	methods size = 0 ifTrue: 
		[^ self inform: 'There are no ', String cr, labelString].

	methods size == 1
		ifTrue: [ | method |
			method := methods first.
			^ Smalltalk tools browser 
				fullOnClass: method methodClass 
				selector: method selector
				highlight: autoSelectString ].

	title := labelString, ' [', methods size printString, ']'.
	
	^ Smalltalk tools messageList
		openMessageList: methods 
		name: title 
		autoSelect: autoSelectString
		refreshingBlockSelector:aRefreshingBlockSelector 