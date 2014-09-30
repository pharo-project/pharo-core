debugIt

	| method receiver context |
	(self model respondsTo: #doItReceiver) 
		ifTrue: 
			[receiver := self model doItReceiver.
			context := self model doItContext]
		ifFalse:
			[receiver := context := nil].
	self lineSelectAndEmptyCheck: [^self].
	method := self compileSelectionFor: receiver in: context.
	method notNil ifTrue:
		[self debug: method receiver: receiver in: context].