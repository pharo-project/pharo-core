configurationSearchAccept:  aString

    aString isEmptyOrNil
		ifTrue: [ self configBrowserModel configurationPattern: nil ]
		ifFalse: [ self configBrowserModel configurationPattern: 
					([ aString asRegexIgnoringCase ] on: RegexSyntaxError do: [ aString ])].
 