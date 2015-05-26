checkForUnsentMessages
	"Check the change set for unsent messages, and if any are found, open 
	up a message-list browser on them"
	| nameLine allChangedSelectors augList unsent |
	nameLine := '"' , self name , '"'.
	allChangedSelectors := Set new.
	(augList := self changedMessageList)
		do: [:each | each isValid
				ifTrue: [allChangedSelectors add: each selector]].
	unsent := self systemNavigation allUnsentMessagesIn: allChangedSelectors.
	unsent notEmpty
		ifTrue: [^ self inform: 'There are no unsent 
messages in change set
' , nameLine].
	self systemNavigation
		browseMessageList: (augList
				select: [:each | unsent includes: each selector])
		name: 'Unsent messages in ' , nameLine