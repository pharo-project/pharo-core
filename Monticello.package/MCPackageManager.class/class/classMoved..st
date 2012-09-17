system changes
classMoved: anEvent
	self managersForPackage: anEvent oldCategory do: [ :mgr | mgr modified: true ].
	self managersForPackage: anEvent newCategory do: [ :mgr | mgr modified: true ].