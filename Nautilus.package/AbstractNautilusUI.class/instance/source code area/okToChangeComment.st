okToChangeComment

	| answer |
	classCommentTextModel canDiscardEdits ifTrue: [^ true].
	answer :=  self promptForCancel.
	answer ifNil: [ ^ classCommentTextModel canDiscardEdits ];
			ifTrue: [ self takeCommentFromView ]
			ifFalse: [  classCommentTextModel cancelEdits  ].	
	^ classCommentTextModel canDiscardEdits
