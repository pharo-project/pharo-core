whenTextUpdatedInCommentPane: anAnnouncement
	self selectedClass ifNotNil:
		 [ :class | newCommentTextModel getText = class classCommentBlank ifFalse: [ class comment: newCommentTextModel getText stamp: Author changeStamp ] ]