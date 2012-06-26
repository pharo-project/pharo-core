fill-styles
stripesForm
	"Answer the form to use for the stripes of various elements."

	^self forms at: #stripes ifAbsent: [Form extent: 32@32 depth: Display depth]