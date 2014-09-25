categorySearchUpdate: aPattern
	categoryPattern := (aPattern isNil or: [ aPattern trimBoth isEmpty ])
		ifTrue: [ nil ]
		ifFalse: [ [aPattern asRegexIgnoringCase] on: RegexSyntaxError do: [ nil ] ].
	self updateCategories.