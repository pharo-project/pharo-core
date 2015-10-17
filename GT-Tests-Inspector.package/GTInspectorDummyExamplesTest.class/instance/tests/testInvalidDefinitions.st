testInvalidDefinitions
	self examplesInClasses: #invalidExamplesDummiesProviders do: [ :example | 
		self assert: example exists.
		self deny: example isValid ]