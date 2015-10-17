testExists
	self examplesInClasses: #allExamplesDummiesProviders do: [ :example | 
		self assert: example exists ]