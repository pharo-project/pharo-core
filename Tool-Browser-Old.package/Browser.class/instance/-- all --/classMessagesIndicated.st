classMessagesIndicated
	"Answer whether the messages to be presented should come from the metaclass."

	^ self metaClassIndicated and: [self classCommentIndicated not]