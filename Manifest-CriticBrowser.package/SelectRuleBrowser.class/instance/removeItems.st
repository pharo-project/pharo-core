private
removeItems
	
	selectedModel selectedItem
		ifNotNil: [:item |  
			selectRule removeAllFoundIn: (item leaves)
		].
		self updateTree  	  