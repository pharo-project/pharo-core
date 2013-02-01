protocol
removeAllItems
	
	selectedModel getRoots do: [ :item |  
		selectRule removeAllFoundIn: (item leaves)].
	
	self updateTree 	  