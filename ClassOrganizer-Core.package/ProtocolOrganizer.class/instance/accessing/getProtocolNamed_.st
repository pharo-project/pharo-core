getProtocolNamed: aName

	^ self allProtocols 
		detect: [ :e | e name = aName ] 
		ifNone: [ Protocol empty ]