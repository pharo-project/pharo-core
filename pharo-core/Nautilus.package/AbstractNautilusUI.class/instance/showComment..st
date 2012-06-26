accessing
showComment: aBoolean

	self okToChangeComment ifFalse: [ ^self ].
	self model showComment: aBoolean.
	
	commentTextArea
		ifNil: [ self buildCommentPane ].
		
	sourceCodePanel removeAllMorphs.	
	aBoolean
		ifTrue: [ self buildCodePanelWithComment ]
		ifFalse: [ self buildCodePanelWithoutComment ]