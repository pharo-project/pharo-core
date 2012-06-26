query
allSentMessages
	"Answer the set of selectors which are sent somewhere in the system."
	^ self  allSentMessagesWithout: {{}. {}}