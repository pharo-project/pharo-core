unselectClass
	commentTextArea ifNotNil: [ commentTextArea disable ].
	acceptor := ClassDefinitionAcceptor model: self.
	self resetClassesListSelection.
	self model
		package: self selectedPackage
		class: nil
		category: nil
		method: nil.
	self updateOnClassSelection