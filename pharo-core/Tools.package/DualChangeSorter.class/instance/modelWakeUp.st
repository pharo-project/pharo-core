other
modelWakeUp
	"A window with me as model is being entered.  Make sure I am up-to-date with the changeSets.
	Treat each side individually rather than going through the . Changed here to avoid endless confirm dialogs."

	leftCngSorter canDiscardEdits ifTrue: [leftCngSorter updateIfNecessary].
	rightCngSorter canDiscardEdits ifTrue: [rightCngSorter updateIfNecessary]