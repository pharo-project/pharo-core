showInstance: aBoolean

	self okToChange
		ifTrue:[
			self model showInstance: aBoolean.
			self resetClassesListSelection.
			self selectedClass 
				ifNotNil: [:class |
					aBoolean 
						ifTrue: [self selectedClass: class theNonMetaClass.
								acceptor := ClassOrMethodDefinitionAcceptor model: self ]
						ifFalse: [self selectedClass: class theMetaClass.
								acceptor := ClassDefinitionAcceptor model: self ]].
			self update.
			self changed: #instanceButtonState.
			self changed: #instanceButtonLabel ]