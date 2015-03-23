testAllExamples
	Object withAllSubclassesDo: [ :eachClass | eachClass gtExamples do: [ :exampleToTest | self checkAllPresentationsOf: exampleToTest ] ]