testRun
	self examplesInClasses: #allExamplesDummiesProviders do: [ :example | 
		self shouldnt: [ example run ] raise: Error ]