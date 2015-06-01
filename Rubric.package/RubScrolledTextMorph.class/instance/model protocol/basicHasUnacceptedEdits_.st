basicHasUnacceptedEdits: aBoolean
	self autoAccept
		ifTrue: [ ^ self ].
	UserManager default canEditCode 
		ifFalse: [ aBoolean ifTrue: [ ^ self ]].
	aBoolean = hasUnacceptedEdits 
		ifFalse: [ hasUnacceptedEdits := aBoolean.
			self changed].
	aBoolean 
		ifFalse: [hasEditingConflicts := false]