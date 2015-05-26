testSmoke
	GLMBasicExamples allExamples do: [:eachPragma | 
		| input browser |
		input := Smalltalk compiler evaluate: (eachPragma argumentAt: 2) logged: false.
		browser := GLMBasicExamples new perform: eachPragma selector.
		[window := browser openOn: input]
			ensure: [window notNil ifTrue: [window delete] ] ]