as yet unclassified
searchUpdate: aString
	pattern := nil.
	
	aString isEmptyOrNil ifFalse: [
		pattern := [aString asRegexIgnoringCase] on: RegexSyntaxError do: [ aString ]].
	
	self updateList.