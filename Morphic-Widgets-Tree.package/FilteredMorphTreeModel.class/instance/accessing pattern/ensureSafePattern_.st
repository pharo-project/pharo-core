ensureSafePattern: aPattern
	^ [ aPattern asRegexIgnoringCase ]
		on: RegexSyntaxError
		do: [ :ex | ]