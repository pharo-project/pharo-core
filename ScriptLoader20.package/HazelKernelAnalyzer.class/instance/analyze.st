analyzing
analyze
	| dependents |
	
	self list do: [:class |
		self analyzeClassVar: class.
		self analyzeMethods: class]