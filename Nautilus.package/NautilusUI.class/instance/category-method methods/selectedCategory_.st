selectedCategory: protocol

	self okToChange
		ifTrue: [
			methodWidget resetMethodCache.
			self model package: self selectedPackage class: self selectedClass category: protocol method: nil.
			self resetMethodsListSelection.
			protocol 
				ifNil: [ acceptor := ClassOrMethodDefinitionAcceptor model: self ]
				ifNotNil: [ 
					acceptor := MethodDefinitionAcceptor model: self.
					self giveFocusTo: categoryWidget ].
			categoryWidget changed: #selectedCategoryIndex.
			self changed: #sourceCodeFrom:.
			^ true].
	^ false