= anAIContext
	(anAIContext class == self class)ifFalse: [^false].
	(self closure = anAIContext closure)ifFalse: [^false].
	(self temporaries = anAIContext temporaries)ifFalse: [^false].
	(self arguments = anAIContext arguments)ifFalse: [^false].
	(self outerContext = anAIContext outerContext)ifFalse:[^false].
	^true
	