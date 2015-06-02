whenExtendCommentSwitch: anAnnouncement
	self fullDisplayedComment
		ifFalse: [ self toggleShowFullComment ] 
		ifTrue: [ self buildCodePanelWithCommentOnRight ].
		self fullDisplayedComment: self fullDisplayedComment not.