selectedPackage: aPackage
" Force package selection, not used by the lists "

	self okToChange
		ifTrue: [
			acceptor := ClassDefinitionAcceptor model: self.
			
			self packageWidget resetPackagesSelection.
			self packageWidget selectPackage: aPackage.
				
			aPackage ifNotNil: [ self giveFocusTo: self packageWidget ].	
				
			self selectedPackageWithoutChangingSelection: aPackage]