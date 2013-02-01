protocol
addItems
	
	toSelectModel selectedItem
		ifNotNil: [ :item |  
			selectRule addAll: (item leaves) ].
	self updateTree   	  