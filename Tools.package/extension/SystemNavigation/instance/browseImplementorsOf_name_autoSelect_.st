browseImplementorsOf: aSelector name: labelString autoSelect: autoSelectString
	"Create and schedule a senders browser for aSelector."	
	^ self 
		browseMessageList: (self allImplementorsOf: aSelector)
		name: labelString
		autoSelect: autoSelectString
		refreshingBlockSelector:#setRefreshingBlockForImplementorsOf: 