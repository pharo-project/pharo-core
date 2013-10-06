renameProtocol: oldName into: newName
	
	(self existsProtocolNamed: newName) 
		ifTrue: [ self moveMethodsFrom: oldName to: newName.
				 self removeProtocolNamed: oldName ] 
		ifFalse: [ ^ (self getProtocolNamed: oldName)
					name: newName;
					yourself].