unselectClass
	commentTextArea ifNotNil: [ commentTextArea disable ].
	self updateCommentWith: ' '.
	acceptor := ClassDefinitionAcceptor model: self.
	self resetClassesListSelection.
	self model
		package: self selectedPackage
		class: nil
		category: nil
		method: nil.
	self updateOnClassSelection