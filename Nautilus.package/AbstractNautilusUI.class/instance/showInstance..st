accessing
showInstance: aBoolean

	self okToChange
		ifTrue:[
			self model showInstance: aBoolean.
			classesSelection removeAll.
			self selectedClass 
				ifNotNil: [:class | 
					aBoolean 
						ifTrue: [self selectedClass: class theNonMetaClass ]
						ifFalse: [self selectedClass: class theMetaClass ]].
			self update.
			self changed: #instanceButtonState.
			self changed: #instanceButtonLabel ]