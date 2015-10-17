subjectsAll: aString
	self substrings: aString do: [ :each | 
		self subject: each ]