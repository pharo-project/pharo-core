diffs
showDiffs: aBoolean
	"Set whether I'm showing diffs as indicated"

	codePane removeAllMorphs.
	
	aBoolean
		ifTrue: [ codePane addMorph: self buildDiffCodePane ]
		ifFalse: [ codePane addMorph: (self buildDefaultCodePane: '') ].
		
	super showDiffs: aBoolean