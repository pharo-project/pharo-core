testIsGTExample
	self examplesInClasses: #allExamplesDummiesProviders do: [ :example | 
		self assert: example isGTExample ]