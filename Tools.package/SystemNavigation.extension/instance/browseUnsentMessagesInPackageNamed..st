*Tools
browseUnsentMessagesInPackageNamed: packageName
	"SystemNavigation default browseUnsentMessagesWithProgressBarInPackageNamed: 'Kernel-Contexts'"
	| unsentMessages |
	unsentMessages := self unsentMessagesWithProgressBarInPackageNamed: packageName.
	^self 
		browseMessageList: unsentMessages asSortedCollection
		name: 'Unsent messages in package ', packageName 
 