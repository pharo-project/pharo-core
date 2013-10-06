addMorphs
	"Add our morphs."

	self preview: self newPreviewMorph.
	self taskList: self newTasksMorph.
	self addMorph: (
		( self theme newColumnIn: self for: {
			self preview.
			self taskList})
			vResizing: #shrinkWrap;
			cellInset: 8;
			cellPositioning: #center).
	self layoutChanged