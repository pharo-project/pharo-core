forceGenerateInitialize

	self selectedClass ifNotNil: [:class || code index |
		(class isMeta not and: [class inheritsFrom: TestCase])
			ifTrue: [
				index := 34.
				code := self buildSetUpCodeFor: class.
				class compile: code classified: 'initialization'.
				code := self buildTearDownCodeFor: class.
				class compile: code classified: 'initialization'.
				self selectedMethod: (class>>#setUp) ]
			ifFalse: [
				index := 62.
				code := self buildInitializeCodeFor: class.
				class compile: code classified: 'initialization' .
				self selectedMethod: (class>>#initialize) ].
		self update.
		self giveFocusTo: sourceTextArea.
		sourceTextArea selectFrom: index+class name size to: index-1+class name size ].