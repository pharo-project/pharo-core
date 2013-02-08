transcript
hasUnacceptedEdits: aBoolean
	"Set the hasUnacceptedEdits flag to the given value. "
	
	UsersManager default currentUser canEditCode 
		ifFalse: [ aBoolean ifTrue: [ ^ self ]].
	aBoolean == hasUnacceptedEdits 
		ifFalse: [hasUnacceptedEdits := aBoolean. 
			self changed].
	aBoolean 
		ifFalse: [hasEditingConflicts := false].
	self okToStyle 
		ifTrue: [ self styler styleInBackgroundProcess: textMorph contents]