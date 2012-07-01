private
entryHeight: aNumber
	"Set the height of the text editor morph.
	Set the width to be 2 times this also."

	self textEditorMorph
		vResizing: #rigid;
		height: aNumber;
		hResizing: #rigid;
		width: aNumber * 2