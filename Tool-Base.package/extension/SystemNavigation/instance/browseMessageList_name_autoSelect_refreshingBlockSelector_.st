browseMessageList: messageList name: labelString autoSelect: autoSelectString refreshingBlockSelector:aRefreshingBlockSelector
	"Create and schedule a MessageSet browser on the message list."
	| methods |
	
	"Do not show trait methods"
	methods := messageList reject: [ :each| each isFromTrait ].
	
	methods isEmpty ifTrue: 
		[^ self inform: 'There are no ', String cr, labelString].

	methods size == 1
		ifTrue: [ | method |
			method := methods first.
			^ Smalltalk tools browser 
				fullOnClass: method methodClass 
				selector: method selector
				highlight: autoSelectString ].
	
	^ Smalltalk tools messageList
		openMessageList: methods 
		name: labelString 
		autoSelect: autoSelectString
		refreshingBlockSelector:aRefreshingBlockSelector 