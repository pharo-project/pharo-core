private
addPragma: aPragma
	pragmas isNil
		ifTrue: [ pragmas := OrderedCollection new ].
	pragmas addLast: aPragma