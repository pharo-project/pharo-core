"protocol: accessing"
selectedClassWithoutChangingSelection: aClass
	categoryWidget resetCategoryCache.
	self okToChangeBoth
		ifFalse: [ ^ self ].
	aClass
		ifNil: [ self unselectClass ]
		ifNotNil: [ 
			acceptor := ClassOrMethodDefinitionAcceptor model: self.
			classesSelection at: aClass theNonMetaClass put: true.
			commentTextArea ifNotNil: [ commentTextArea enable ].
			(self selectedPackageIncludes: aClass theNonMetaClass)
				ifTrue: [ 
					self model
						package: self selectedPackage
						class: aClass
						category: nil
						method: nil ]
				ifFalse: [ self selectedClass: aClass withSelection: (self parentOfClass: aClass) ].
			self updateOnClassSelection ]