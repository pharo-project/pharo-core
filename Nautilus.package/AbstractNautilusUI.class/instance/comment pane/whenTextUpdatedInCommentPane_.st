whenTextUpdatedInCommentPane: anAnnouncement
	self selectedClass ifNotNil:
		 [ :class | commentTextModel getText = class classCommentBlank ifFalse: [ class comment: commentTextModel getText stamp: Author changeStamp ] ]