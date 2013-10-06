openAsMorphOn: anObject withEvalPane: withEval withLabel: label valueViewClass: valueViewClass
	"Note: for now, this always adds an eval pane, and ignores the valueViewClass"

	Smalltalk tools userManager canInspect ifFalse: [ ^ self ].
	^ (self openAsMorphOn: anObject withLabel: label) openInWorld