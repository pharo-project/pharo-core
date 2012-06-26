code pane menu
perform: selector orSendTo: otherTarget
	"Selector was just chosen from a menu by a user.  If can respond, then perform it on myself.  If not, send it to otherTarget, presumably the editPane from which the menu was invoked." 

	| result |
	(#(debug proceed) includes: selector)		"When I am a notifier window"
		ifTrue: [^ self perform: selector]
		ifFalse: [result := super perform: selector orSendTo: otherTarget.
				selector == #doIt ifTrue: [
					result ~~ #failedDoit ifTrue: [self proceedValue: result]].
				^ result]