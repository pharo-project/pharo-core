utilties
runRule: aClass expect: aCollection
	| rules rule composite undo |
	rules := RBSpellingRule allSubclasses
		collect: [ :each | each new ].
	rule := rules
		detect: [ :each | each isKindOf: aClass ]
		ifNone: [ self error: aClass name , ' is not a spelling rule' ].
	composite := RBCompositeLintRule rules: rules name: 'Spelling'.
	self
		assert: (rule name isString and: [ rule name notEmpty ])
		description: aClass name , ' has no name'.
	undo := model changes execute.
	[ RBSmalllintChecker runRule: composite onEnvironment: environment ]
		ensure: [ undo execute ].
	rules do: [ :each |
		self 
			assert: (rule = each or: [ each result isEmpty ])
			description: rule name , ' should not report errors' ].
	rule result searchStrings do: [ :each |
		self
			assert: (aCollection includes: each)
			description: each printString , ' should not be reported' ].
	aCollection do: [ :each |
		self
			assert: (rule result searchStrings includes: each)
			description: each printString , ' should be reported' ].
	^ rule result