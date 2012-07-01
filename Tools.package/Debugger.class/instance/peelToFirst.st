context stack menu
peelToFirst
	"Peel the stack back to the second occurance of the currently selected message.  Very useful for an infinite recursion.  Gets back to the second call so you can see one complete recursion cycle, and how it was called at the beginning.  Also frees a lot of space!"

	| ctxt |
	self isPostMortem ifTrue: [^ self].
	contextStackIndex = 0 ifTrue: [^ Beeper beep].
	"self okToChange ifFalse: [^ self]."
	ctxt := interruptedProcess popTo: self selectedContext findSecondToOldestSimilarSender.
	self resetContext: ctxt.
