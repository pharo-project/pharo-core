unsentMessagesInCategory: category
	^(self environment organization classesInCategory: category) inject: Set new into: [:unsentMessages :class|
		unsentMessages, (self unsentMessagesInClass: class)]
	