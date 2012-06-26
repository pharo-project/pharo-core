metaclass
instanceMessagesIndicated
	"Answer whether the messages to be presented should come from the 
	class."

	^metaClassIndicated not and: [self classCommentIndicated not]