testIsEquals
	self examplesInClasses: #allExamplesDummiesProviders do: [ :example | 
		self assert: (example = example) ]