executeOn: interpreter
	^store 
		ifFalse: [interpreter pushRemoteTemp: name inVector: tempVectorName]
		ifTrue: [interpreter storeRemoteTemp: name inVector: tempVectorName]