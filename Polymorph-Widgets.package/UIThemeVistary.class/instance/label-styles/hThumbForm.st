hThumbForm
	"Answer the form to use for horizontal thumbs."

	^self forms at: #hThumb ifAbsent: [Form extent: 10@10 depth: Display depth]