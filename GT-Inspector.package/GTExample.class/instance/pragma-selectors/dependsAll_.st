dependsAll: aString
	self substrings: aString do: [ :each | 
		self depends: aString ]