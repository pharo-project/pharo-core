*Tools
browseAllUnsentMessages
	"SystemNavigation default browseAllUnsentMessages"
	| unsentMessages |
	unsentMessages := self allUnsentMessagesWithProgressBar.
	^self 
		browseMessageList: unsentMessages asSortedCollection
		name: 'All unsent messages' 
 