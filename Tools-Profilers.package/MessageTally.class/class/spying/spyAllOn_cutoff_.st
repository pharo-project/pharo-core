spyAllOn: aBlock cutoff: aNumber

	| node result |
	node := self new.
	node reportOtherProcesses: true.	"Irrelevant in this case. All processes will be reported on their own."
	result := node spyAllEvery: self defaultPollPeriod on: aBlock.
	(CodeHolder new contents: (String streamContents: [:s | node report: s cutoff: aNumber; close]))
		openLabel: 'Spy Results' wrap: false.
	^ result