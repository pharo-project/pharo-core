isExampleMethod
	|hasExamplePragma|
	hasExamplePragma := self pragmas anySatisfy: [:each | each keyword = #example ].
    ^ (self methodClass isMeta) and: [ 
		((self selector beginsWith: 'example') or: [ hasExamplePragma ])
			 and: [ self numArgs isZero ] ]