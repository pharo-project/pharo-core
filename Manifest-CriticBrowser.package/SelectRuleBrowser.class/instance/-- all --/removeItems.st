removeItems
	
	selectedModel selectedItem
		ifNotNil: [ :item |  
			selectRule removeAllFoundIn: item content leaves ].
	self updateTree  	  