basicHasUnacceptedEdits: aBoolean
	"Set the hasUnacceptedEdits flag to the given value. "
	
	UserManager default canEditCode 
		ifFalse: [ aBoolean ifTrue: [ ^ self ]].
	aBoolean == hasUnacceptedEdits 
		ifFalse: [super hasUnacceptedEdits: aBoolean.
			self changed].
	aBoolean 
		ifFalse: [hasEditingConflicts := false]