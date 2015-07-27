testSimulateCmdKeystroke

	| ws |
	ws := Smalltalk tools workspace open.
	self simulateKeyStrokes: 'var := 3.'.
	self simulateKeyStroke: $s command.
	self assert: ws hasUnacceptedEdits = false.
	ws dependents first delete.