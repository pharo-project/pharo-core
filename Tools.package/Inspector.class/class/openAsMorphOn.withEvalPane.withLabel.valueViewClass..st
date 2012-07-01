instance creation
openAsMorphOn: anObject withEvalPane: withEval withLabel: label valueViewClass: valueViewClass
	"Note: for now, this always adds an eval pane, and ignores the valueViewClass"

	^ (self openAsMorphOn: anObject withLabel: label) openInWorld