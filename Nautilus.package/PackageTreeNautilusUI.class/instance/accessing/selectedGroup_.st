selectedGroup: aGroup
	" Force package selection, not used by the lists "

	self okToChange ifFalse: [ ^ self ].
			
	acceptor := ClassDefinitionAcceptor model: self.
			
	packagesSelection removeAll.
	groupsSelection removeAll.
	groupsSelection at: aGroup put: true.
		
	aGroup 
		ifNotNil: [ 
			self basicSelectPackage: aGroup ]
		ifNil: [
			self selectedPackageWithoutChangingSelection: nil. 
			self listClearSelection ].	
		

	