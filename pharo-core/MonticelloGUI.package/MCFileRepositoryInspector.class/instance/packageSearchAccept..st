morphic ui
packageSearchAccept: aString
	aString isEmptyOrNil
		ifTrue: [ packagePattern := nil ]
		ifFalse: [ packagePattern := [ aString asRegexIgnoringCase ] on: RegexSyntaxError do: [ aString ]].
	self changed: #packageList.