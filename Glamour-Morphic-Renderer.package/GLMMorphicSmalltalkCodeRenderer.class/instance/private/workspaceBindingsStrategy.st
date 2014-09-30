workspaceBindingsStrategy

	^ [ :currentBindings :aSymbol |
		(currentBindings includesKey: aSymbol)
			ifFalse: [currentBindings at: aSymbol put: nil].
		currentBindings associationAt: aSymbol]