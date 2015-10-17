runExampleContainers: aCollection
	aCollection do: [ :container | 
		container gtExamplesContained do: [ :example | 
			self runExample: example fromContainer: container ] ]