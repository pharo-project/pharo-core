testRecursiveDefinitions
	self examplesInClasses: #recursiveExamplesDummiesProviders do: [ :example | 
		self assert: example exists.
		self assert: example hasValidArguments.
		self assert: example hasValidDependencies.
		self assert: (example method selector = #h or: [ example isValid not ]) ]