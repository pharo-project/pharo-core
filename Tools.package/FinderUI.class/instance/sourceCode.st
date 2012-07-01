text areas behavior
sourceCode

	^ self selectedClass isNil
		ifTrue: [
			self isExamplesSymbol
				ifTrue: [ self class methodFinderExplanation ]
				ifFalse: [ self defaultExplanation]]
		ifFalse:[
			self selectedMethod isNil
				ifTrue: [
					self buildDescriptionOf: self selectedClass]
				ifFalse:[
					| method |
					method := self isExamplesSymbol
								ifTrue: [self finder findSelector: self selectedMethod]
								ifFalse: [self selectedMethod].
					(self selectedClass >> method) sourceCode]]