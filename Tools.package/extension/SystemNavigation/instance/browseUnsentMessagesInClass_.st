browseUnsentMessagesInClass: aClass
	"SystemNavigation new browseUnsentMessagesInClass: SystemNavigation"
	| unsentMessages |
	unsentMessages := self unsentMessagesWithProgressBarInClass: aClass.
	^self 
		browseMessageList: unsentMessages
		name: 'Unsent messages in class ', aClass name 
 