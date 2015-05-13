hasUnacceptedEdits: aBoolean
	"Set the hasUnacceptedEdits flag to the given value. "

	(self model respondsTo: #hasUnacceptedEdits:)
		ifTrue: [ self model hasUnacceptedEdits: aBoolean ]
		ifFalse: [ 
			UserManager default canEditCode
				ifFalse: [ 
					aBoolean
						ifTrue: [ ^ self ] ].
			super hasUnacceptedEdits: aBoolean.
			self changed ].
	aBoolean
		ifFalse: [ hasEditingConflicts := false ]