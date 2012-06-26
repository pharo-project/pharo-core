collecting leaves
leavesInto: leafDict fromSender: senderTally

	| rcvrs |
	rcvrs := self sonsOver: 0.
	rcvrs size = 0
		ifTrue: [ self into: leafDict fromSender: senderTally ]
		ifFalse: [
			
			(reportOtherProcesses not and: [ rcvrs anyOne process isNil ]) ifTrue: [
				^self].
			
			rcvrs do: [ :node |
				node isPrimitives
					ifTrue: [ node leavesInto: leafDict fromSender: senderTally ]
					ifFalse: [ node leavesInto: leafDict fromSender: self ]]]