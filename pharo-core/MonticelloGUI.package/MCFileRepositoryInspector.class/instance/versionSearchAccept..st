morphic ui
versionSearchAccept: aString
	aString isEmptyOrNil
		ifTrue: [ versionPattern := nil ]
		ifFalse: [ versionPattern := [ aString asRegexIgnoringCase ] on: RegexSyntaxError do: [ aString ]].
	self changed: #versionList.