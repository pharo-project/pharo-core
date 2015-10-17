testMatchesMethod
	self examplesInClasses: #allExamplesDummiesProviders do: [ :example | 
		self assert: (example matchesMethod: example method) ]