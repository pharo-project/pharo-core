diffs
showDiffs
	"Answer whether the receiver is showing diffs of source code.  The preferred protocol here is #showingRegularDiffs, but this message is still sent by some preexisting buttons so is retained."

	^ contentsSymbol == #showDiffs
