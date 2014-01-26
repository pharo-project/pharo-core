classModified: anEvent
	anEvent isPropagation ifTrue:  [ ^ self ].
	
	self 
		managersForClass: anEvent classAffected 
		do:[ :mgr | mgr modified: true ].