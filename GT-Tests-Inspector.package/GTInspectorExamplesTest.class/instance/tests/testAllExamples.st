testAllExamples
	self allExamplesClasses
		do: [ :eachClass | 
			eachClass gtExamples do: [ :exampleToTest | 
				exampleToTest ignoreTest ifTrue: [ 
					self checkAllPresentationsOf: exampleToTest ] ] ]