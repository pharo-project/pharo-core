buildCodePanelWithComment

	self model commentPosition == #right
		ifTrue: [ self buildCodePanelWithCommentOnRight ].
	self model commentPosition == #bottom
		ifTrue: [ self buildCodePanelWithCommentOnBottom ].
	self model commentPosition == #left
		ifTrue: [ self buildCodePanelWithCommentOnLeft ].
	self model commentPosition == #top
		ifTrue: [ self buildCodePanelWithCommentOnTop ].