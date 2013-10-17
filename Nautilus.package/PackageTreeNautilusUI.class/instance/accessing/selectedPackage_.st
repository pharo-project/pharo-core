selectedPackage: aPackage
	" Force package selection, not used by the lists "
	
	self okToChange ifFalse: [ ^ self ].

	acceptor := ClassDefinitionAcceptor model: self.
			
	groupsSelection removeAll.
	packagesSelection removeAll.
	packagesSelection at: aPackage put: true.
		
	aPackage 
		ifNotNil: [ 
			self basicSelectPackage: aPackage ]
		ifNil: [
			self selectedPackageWithoutChangingSelection: nil.
			self listClearSelection ].	
		
	