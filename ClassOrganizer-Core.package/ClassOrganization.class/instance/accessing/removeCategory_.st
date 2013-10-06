removeCategory: protocolName
	| oldCategories |
	
	(self protocolOrganizer hasProtocolNamed: protocolName)
		ifFalse: [ ^ self ].
	
	oldCategories := self protocolOrganizer allProtocolsNames copy.
	self protocolOrganizer removeProtocolNamed: protocolName.
	self notifyOfRemovedCategory: protocolName.
	self notifyOfChangedCategoriesFrom: oldCategories to: self protocolOrganizer allProtocolsNames.