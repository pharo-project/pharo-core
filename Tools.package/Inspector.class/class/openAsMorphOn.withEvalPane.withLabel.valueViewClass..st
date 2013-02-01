instance creation
openAsMorphOn: anObject withEvalPane: withEval withLabel: label valueViewClass: valueViewClass
	"Note: for now, this always adds an eval pane, and ignores the valueViewClass"

	UsersManager default currentUser canInspect ifFalse: [ ^ self ].
	^ (self openAsMorphOn: anObject withLabel: label) openInWorld