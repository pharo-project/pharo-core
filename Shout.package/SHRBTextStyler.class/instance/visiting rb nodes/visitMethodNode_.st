visitMethodNode: aMethodNode 
aMethodNode comments do: [ :comment|
		self 
			addStyle: #comment
			from: comment start
			to: comment stop ].
	aMethodNode arguments do: [ :argument|
		self 
			addStyle: #patternArg
			forNode: argument ].
		
	aMethodNode selectorParts do: [ :keyword|
		self 
			addStyle: #patternKeyword
			forNode: keyword ].
	
	aMethodNode pragmas
		do: [ :each | self visitNode: each ].
		
	self visitNode: aMethodNode body