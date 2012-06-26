public access
evaluate: textOrStream in: aContext to: receiver notifying: aRequestor ifFail: failBlock
	^ self evaluate: textOrStream in: aContext to: receiver notifying: aRequestor ifFail: failBlock logged: false.