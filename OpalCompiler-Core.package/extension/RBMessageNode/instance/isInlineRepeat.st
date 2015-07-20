isInlineRepeat
	self methodNode compilationContext optionInlineRepeat
		ifFalse: [ ^ false ].
	self receiver isBlock
		ifFalse: [ ^ false ].
	self receiver arguments size isZero
		ifFalse: [ ^ false ].
	self isCascaded
		ifTrue: [ ^ false ].
	#repeat = self selector
		ifFalse: [ ^ false ].
	^ true