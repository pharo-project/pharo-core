resetContext: aContext 
	"Used when a new context becomes top-of-stack, for instance when the
	method of the selected context is re-compiled, or the simulator steps or
	returns to a new method. There is room for much optimization here, first
	to save recomputing the whole stack list (and text), and secondly to avoid
	recomposing all that text (by editing the paragraph instead of recreating it)."

	| oldContext |
	oldContext := self selectedContext.
	contextStackTop := aContext.
	self newStack: contextStackTop contextStack.
	self changed: #contextStackList.
	self contextStackIndex: 1 oldContextWas: oldContext.
	self contentsChanged.
