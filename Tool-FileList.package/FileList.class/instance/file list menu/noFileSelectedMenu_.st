noFileSelectedMenu: aMenu

	^ aMenu
		addServices: self itemsForNoFile 
		for: self
		extraLines: #()
		
