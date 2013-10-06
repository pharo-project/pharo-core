existsProtocolNamed: aProtocolName
	
	self allProtocols detect: [ :e | e name = aProtocolName ] ifNone: [ ^ false].
	^true.