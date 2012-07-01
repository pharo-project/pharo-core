code pane
doItContext
	"Answer the context in which a text selection can be evaluated."

	contextStackIndex = 0
		ifTrue: [^super doItContext]
		ifFalse: [^self selectedContext]