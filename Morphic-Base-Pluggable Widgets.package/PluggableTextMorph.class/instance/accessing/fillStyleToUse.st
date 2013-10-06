fillStyleToUse
	"Answer the fillStyle that should be used for the receiver."
	
	^self enabled
		ifTrue: [self theme textEditorNormalFillStyleFor: self]
		ifFalse: [self theme textEditorDisabledFillStyleFor: self]