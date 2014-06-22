titleAndPaneText
	"If the receiver represents a workspace, return an Association between the title and that text, else return nil"
	(paneMorphs size ~~ 1 or: [(paneMorphs first isKindOf: PluggableTextMorph) not])
		ifTrue: [^ nil].
	^ labelString -> paneMorphs first text

