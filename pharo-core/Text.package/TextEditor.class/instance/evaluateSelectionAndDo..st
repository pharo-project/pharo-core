do-its
evaluateSelectionAndDo: aBlock
	"Treat the current selection as an expression; evaluate it and invoke aBlock with the result."
	| result rcvr ctxt |
	self lineSelectAndEmptyCheck: [^ nil].

	(model respondsTo: #doItReceiver) 
		ifTrue: [ rcvr := model doItReceiver.
				ctxt := model doItContext]
		ifFalse: [rcvr := ctxt := nil].
	result := [
		rcvr class evaluatorClass new 
			evaluate: self selectionAsStream
			in: ctxt
			to: rcvr
			notifying: self
			ifFail: [morph flash. ^ nil]
			logged: true.
	] 
		on: OutOfScopeNotification 
		do: [ :ex | ex resume: true].
	^aBlock value: result