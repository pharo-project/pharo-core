protocol
classify: aSymbol inProtocolNamed: aProtocolName suppressIfDefault: aBoolean
	| protocolsToRemove |

	protocolsToRemove := {}.
	aBoolean ifTrue: [
		protocolsToRemove := self protocolsOfSelector: aSymbol ].
	protocolsToRemove do: [:e | self removeProtocol: e ].
	
	self 
		classify: aSymbol 
		inProtocolNamed: aProtocolName.
		
	