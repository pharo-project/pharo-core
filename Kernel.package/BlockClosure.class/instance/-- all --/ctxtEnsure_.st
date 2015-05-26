ctxtEnsure: aBlock
	"Evaluate a termination block after evaluating the receiver, regardless of whether the receiver's evaluation completes."

	| returnValue b |
	<primitive: 198>

	returnValue := self value.
	aBlock == nil ifFalse: [
		"nil out aBlock temp before evaluating aBlock so it is not executed again if aBlock remote returns"
		b := aBlock.
		thisContext tempAt: 1 put: nil.  
		b value.
	].
	^ returnValue