testAllExamples
	Object withAllSubclasses
		do: [ :eachClass | 
			eachClass gtExamples do: [ :exampleToTest | 
				self checkAllPresentationsOf: exampleToTest.
				exampleToTest detachResultFromSystem ] ]
		displayingProgress: 'Testing GTInspector examples (#testAllExamples)'