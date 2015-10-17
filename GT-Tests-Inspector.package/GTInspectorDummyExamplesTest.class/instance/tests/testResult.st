testResult
	self examplesInClasses: #allExamplesDummiesProviders do: [ :example | 
		self shouldnt: [ example result ] raise: Error.
		self shouldnt: [ example returnValue ] raise: Error.
		self shouldnt: [ example detachResultFromSystem ] raise: Error.
		self shouldnt: [ example result ] raise: Error.
		self shouldnt: [ example returnValue ] raise: Error. ]