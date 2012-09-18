protocol
renameProtocol: oldName into: newName

	^ (self getProtocolNamed: oldName)
			name: newName;
			yourself