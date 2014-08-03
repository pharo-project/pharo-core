generateInitialize
	
	self selectedClass ifNotNil: [:class || code index category |
		category := 'initialize'.
		(class isMeta not and: [class inheritsFrom: TestCase])
			ifTrue: [
				index := 34.
				(class includesSelector:  #setUp) 
					ifFalse: [
						code := self buildSetUpCodeFor: class.
						class compile: code classified: category ].
				(class includesSelector: #tearDown) 
					ifFalse: [
						code := self buildTearDownCodeFor: class.
						class compile: code classified: category ].
				self selectedMethod: (class>>#setUp) 
				]
			ifFalse: [
				index := 62.
				(class includesSelector: #initialize) 
					ifFalse: [
						code := self buildInitializeCodeFor: class.
						class compile: code classified: category ].
				self selectedMethod: (class>>#initialize) ].
		self updateCategoryAndMethodList.
		self giveFocusTo: sourceTextArea.
		sourceTextArea selectFrom: index+class name size to: index-1+class name size ].