testAllExamples
	Object withAllSubclasses 
		do: [ :eachClass | eachClass gtExamples do: [ :exampleToTest | self checkAllPresentationsOf: exampleToTest ] ]
		displayingProgress: 'Testing GTInspector examples (#testAllExamples)'