addAllItems
	
	toSelectModel roots do: [ :item | selectRule addAll: item leaves].
	self updateTree.  	  