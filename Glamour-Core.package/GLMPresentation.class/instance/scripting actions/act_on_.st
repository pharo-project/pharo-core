act: aBlock on: aCharacter 
	 
	self 
		addAction: 
			((GLMGenericAction new) 
				action: aBlock; 
				shortcut: aCharacter; 
				yourself)