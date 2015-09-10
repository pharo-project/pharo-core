browseReference
	self selectedItemFromTree isReferenceNode ifTrue: [ 
			self selectedItemFromTree browseReference
		 ]