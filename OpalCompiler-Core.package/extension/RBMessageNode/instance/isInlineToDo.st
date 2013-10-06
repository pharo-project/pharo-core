isInlineToDo

	| block step |
	self methodNode compilationContext optionInlineToDo ifFalse: [ ^false ]. 

	self receiver isBlock ifTrue: [^ false].
	self isCascaded ifTrue: [^ false].
	(#(to:do: to:by:do:) includes: self selector) ifFalse: [^ false].
	block := self arguments last.
	block isBlock ifFalse: [^ false].
	block arguments size = 1 ifFalse: [
		self notify: 'to:do: block must take one arg'. ^ false].
	self arguments first isVariable ifTrue: [ 
		(RBParseTreeSearcher new
			matches: self arguments first name , ' := `@object' do: [:n :a | true];
			executeTree: block initialAnswer: false) ifTrue: [^ false].
	].
	self arguments size = 3 "to:by:do:" ifTrue: [
		step := self arguments second.
		step isLiteral ifFalse: [^ false].
		step value = 0 ifTrue: [^ false].
	].
	^ true