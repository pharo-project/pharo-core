raisesAny: aString
	self substrings: aString do: [ :each | 
		self raises: each ]