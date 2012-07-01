do-its
evaluateSelectionAndDo: aBlock
	"Treat the current selection as an expression; evaluate it and invoke aBlock with the result."
	| result rcvr ctxt |

	self lineSelectAndEmptyCheck: [^ ''].
	(model respondsTo: #doItReceiver) 
		ifTrue: [ rcvr := model doItReceiver.
				ctxt := model doItContext]
		ifFalse: [ rcvr := ctxt := nil].
	result := [
		rcvr class evaluatorClass new 
			evaluate: self selectionForDoitAsStream
			in: ctxt
			to: rcvr
			notifying: self morph  "don't set it to self.. The receiver can be destroyed as a result of evaluateSelection"
			ifFail: [self morph flash. ^nil]
			logged: true.
	] 
		on: OutOfScopeNotification 
		do: [ :ex | ex resume: true].
	^ aBlock value: result