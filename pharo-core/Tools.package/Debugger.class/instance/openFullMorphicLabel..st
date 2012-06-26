initialize
openFullMorphicLabel: aLabelString
	"Open a full morphic debugger with the given label"

	^UIManager default 
		openDebugger: self 
		fullMorphicLabel: aLabelString