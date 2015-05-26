addItems
	
	toSelectModel selectedItem
		ifNotNil: [ :item | selectRule add: item content  ].
	self updateTree   	  