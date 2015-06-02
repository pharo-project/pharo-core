okToChangeComment

	| answer |
	ClassCommentTextModel canDiscardEdits ifTrue: [^ true].
	answer :=  self promptForCancel.
	answer ifNil: [ ^ ClassCommentTextModel canDiscardEdits ];
			ifTrue: [ self classCommentTextModel acceptEditsInView  ]
			ifFalse: [  ClassCommentTextModel cancelEdits  ].	
	^ ClassCommentTextModel canDiscardEdits
