once
	| callingContext senderContext node |
	<debuggerCompleteToSender>
	callingContext := (thisContext findContextSuchThat: [ :ctx | 
		ctx method sendsAnySelectorOf: #(haltOnce) ]
	) ifNil: [ thisContext sender ].
	
	senderContext := thisContext.
	
	RecursionStopper during: [
		"we need to ignore when the code below calls us again"
		node := callingContext sourceNodeExecuted.
		(node hasProperty: #haltOnce) ifTrue: [ ^ self ]. 
		node propertyAt: #haltOnce put: true.
		
		self signalIn: senderContext
		
	].
	
	
