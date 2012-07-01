as yet unclassified
blockCode: aString notifying: aRequestor
	"Treat the current selection as an expression; evaluate and tally it."
	| receiver context  |
	aString ifNil: [^ self].

	receiver := nil.
	context := self doItContext.
	blockSource := aString.

	[ | compiledMethod v |
		compiledMethod := self compile: aString for: receiver in: context.
		compiledMethod ifNil: [^ self].
		v := compiledMethod valueWithReceiver: self arguments: #().
		self showResult: v
	] 
		on: OutOfScopeNotification 
		do: [ :ex | ex resume: true].
	self changed: #blockCode.
	self changed: #rootNodes.
	self changed: #summaryText.
	self changed: #fullReport.
	self selection: nil.
	self startState.

	