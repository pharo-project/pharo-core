protocol
getProtocolNamed: aName

	^ self allProtocols detect: [ :e | e name = aName ] ifNone: [ self allProtocol ]