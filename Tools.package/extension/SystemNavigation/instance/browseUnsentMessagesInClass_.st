browseUnsentMessagesInClass: aClass
	"SystemNavigation new browseUnsentMessagesInClass: Browser"
	| unsentMessages |
	unsentMessages := self unsentMessagesWithProgressBarInClass: aClass.
	^self 
		browseMessageList: unsentMessages
		name: 'Unsent messages in class ', aClass name 
 