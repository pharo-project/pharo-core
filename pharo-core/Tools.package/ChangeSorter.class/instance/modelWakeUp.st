access
modelWakeUp
	"A window with me as model is being entered.
	Make sure I am up-to-date with the changeSets."

	self canDiscardEdits ifTrue: [self update]