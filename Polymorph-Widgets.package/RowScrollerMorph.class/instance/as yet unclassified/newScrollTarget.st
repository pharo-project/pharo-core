newScrollTarget
	"Answer a new default scroll target."

	^(self theme builder newRow: {
		Morph new color: Color red.
		Morph new color: Color green})
		vResizing: #spaceFill