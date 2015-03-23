saveContent: aStringOrText
	self modificationTime: self defaultTimestamp.
	self content: aStringOrText.
	self save.