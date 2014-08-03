"protocol: accessing"
selectedClassWithoutChangingSelection: aClass
	categoryWidget resetCategoryCache.
	self okToChangeSourceAndComment
		ifFalse: [ ^ self ].
	aClass
		ifNil: [ self unselectClass ]
		ifNotNil: [ 
			acceptor := ClassOrMethodDefinitionAcceptor model: self.
			self classWidget selectClass:aClass .
			commentTextArea ifNotNil: [ commentTextArea enable ].
			((self selectedPackageIncludes: aClass theNonMetaClass) or: [ model showPackages not ])
				ifTrue: [ 
					self model
						package: self selectedPackage
						class: aClass
						category: nil
						method: nil ]
				ifFalse: [ self selectedClass: aClass withSelection: (self parentOfClass: aClass) ].
			self updateOnClassSelection ]