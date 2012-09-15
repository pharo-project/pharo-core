category-method methods
selectedMethod: aMethod 

	self okToChange
		ifTrue: [
			self forceSelectedMethod: aMethod.
			self setWindowTitle.
			self highlightCategory: aMethod.
			aMethod ifNotNil: [ self giveFocusTo: methodWidget ].
			self changed: #sourceCodeFrom:.
			multipleMethodsEditor giveFocusToDefault.
			^ true].
	^false 