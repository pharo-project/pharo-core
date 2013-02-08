report
into: leafDict fromSender: senderTally
	| leafNode |
	leafNode := leafDict at: method
		ifAbsent: [leafDict at: method
			put: (QSystemTally new class: class method: method)].
	leafNode bump: tally fromSender: senderTally