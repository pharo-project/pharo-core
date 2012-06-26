source code area
compileAMethodFromCategory: aCategory withSource: aString notifying: aController

	| category selector |
	category := aCategory.
	self selectedClass
		ifNil: ["should never happened" self error ]
		ifNotNil: [:class || scroll |
			scroll := sourceTextArea scrollValue y.
			(category = self noMethodsString or: [ category = self allLabel ])
				ifTrue: [ category := self asYetUnclassifiedString ].
			"sourceTextArea update: #clearUserEdits."
			selector := self compileANewMethodInClass: class categorized: category from: aString notifyng: aController.
			
			selector
				ifNil: [^ sourceTextArea hasUnacceptedEdits: true. ]
				ifNotNil: [| method |
					sourceTextArea update: #clearUserEdits.
					sourceTextArea vScrollValue: scroll.
					method := (class methodNamed: selector).
					"self selectedCategory: cat."
					"methodsTree setSelectedNodeItem: method."
					( self selectedMethod notNil and: [(self selectedClass = class) and: [ self selectedMethod selector = selector]])
						ifFalse: [
							self selectedMethod: method.
							self update.
							sourceTextArea vScrollValue: scroll.]]]