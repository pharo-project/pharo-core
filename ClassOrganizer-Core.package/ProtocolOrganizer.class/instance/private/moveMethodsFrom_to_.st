moveMethodsFrom: fromProtocolNamed to: toProtocolNamed

	| fromProtocol toProtocol |
	
	fromProtocol := self getProtocolNamed: fromProtocolNamed.
	toProtocol := self getProtocolNamed: toProtocolNamed.
	
	toProtocol addAllMethodsFrom: fromProtocol.
	fromProtocol removeAllMethods.
	
	^ toProtocol.