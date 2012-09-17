system changes
methodMoved: anEvent
	self managersForPackage: anEvent oldProtocol do: [ :mgr | mgr modified: true ].
	self managersForPackage: anEvent newProtocol do: [ :mgr | mgr modified: true ].