private
entryHeight: aNumber
	"Set the height of the text editor morph.
	Set the width to be 2 times this also."

	self textEditorMorph
		vResizing: #rigid;
		height: aNumber.
	self
		width: (((aNumber * 2) max: 200) max: self width)