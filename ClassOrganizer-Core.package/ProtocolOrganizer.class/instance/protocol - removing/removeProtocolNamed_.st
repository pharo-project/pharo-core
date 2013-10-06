removeProtocolNamed: aName
	| protocolToRemove |
	
	protocolToRemove := self getProtocolNamed: aName.
	^ self removeProtocol: protocolToRemove