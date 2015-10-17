gtExamplesContained
	^ [ self gtExamples ]
		on: Error
		do: [ #() ]