transform
	| methods subclassesMethods rewriter thisSubclasses |
	self formDeprecatedMethod.
	thisSubclasses := class allSubclasses.
	methods := class selectors asOrderedCollection.
	subclassesMethods := OrderedCollection new.
	rewriter := self formRewriteRule.
	methods
		do: [ :each | 
			(rewriter executeTree: (class methodFor: each) parseTree)
				ifTrue: [ class compileTree: rewriter tree ] ].
	thisSubclasses
		do: [ :eachSubclass | 
			eachSubclass selectors asOrderedCollection
				do: [ :each | 
					(rewriter executeTree: (eachSubclass methodFor: each) parseTree)
						ifTrue: [ eachSubclass compileTree: rewriter tree ] ] ]