executeOn: interpreter
	store 
		ifFalse: [interpreter pushTemp: name]
		ifTrue: [interpreter storeTemp: name]
	