category-method methods
selectedMethodWithoutAsking: aMethod 

	self okToChange
		ifTrue: [
			self forceSelectedMethod: aMethod.
			self setWindowTitle.
			self highlightCategory: aMethod.
			aMethod ifNotNil: [ self giveFocusTo: methodWidget ].
			self changed: #sourceCode.
			^ true].
	^false 