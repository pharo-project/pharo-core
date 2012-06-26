accessing
icon
	"Answer the receiver's icon. Handle legacy case
	of wording-based mechanism."
	
	|state| 
	self getStateSelector ifNil: [^super icon].
	state := (MessageSend receiver: self target selector: self getStateSelector)
		valueWithEnoughArguments: self arguments .
	self flag: #CleanYesNoOnOffAfter.
	(state isKindOf: Association)
		ifTrue: [^ state key ifTrue: [self onIcon] ifFalse: [self offIcon]]
		ifFalse: [
	(state = true or: [state isString and: [(state beginsWith: '<yes>') or: [state beginsWith: '<on>']]])
		ifTrue: [^self onIcon].
	(state = false or: [state isString and: [(state beginsWith: '<no>') or: [state beginsWith: '<off>']]])
		ifTrue: [^self offIcon]].
	^super icon