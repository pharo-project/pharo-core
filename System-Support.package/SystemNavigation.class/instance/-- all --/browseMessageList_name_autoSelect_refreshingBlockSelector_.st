browseMessageList: messageList name: labelString autoSelect: autoSelectString refreshingBlockSelector:aRefreshingBlockSelector
	"Create and schedule a MessageSet browser on the message list."
	| methods |
	
	"Do not show trait methods"
	methods := messageList reject: [ :each| each isFromTrait ].
	
	methods isEmpty ifTrue: 
		[^ self inform: 'There are no ', String cr, labelString].
	
	^ Smalltalk tools messageList
		openMessageList: methods 
		name: labelString 
		autoSelect: autoSelectString
		refreshingBlockSelector:aRefreshingBlockSelector 