process control
nameAndRulesFor: aProcess 
	"Answer a nickname and two flags: allow-stop, and allow-debug"

	WellKnownProcesses do: [:blockAndRules |
		blockAndRules key value == aProcess ifTrue: [ ^ blockAndRules value value ].
		].

	^ {aProcess suspendedContext asString. true. true}