*Tools
browseUnsentMessagesInClass: aClass
	"SystemNavigation default browseUnsentMessagesInClass: Browser"
	| unsentMessages |
	unsentMessages := self unsentMessagesWithProgressBarInClass: aClass.
	^self 
		browseMessageList: unsentMessages asSortedCollection
		name: 'Unsent messages in class ', aClass name 
 