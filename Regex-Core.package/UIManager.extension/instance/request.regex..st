*Regex-Core
request: aTitleString regex: initialRegexString
	"Prompt the user for a valid regex.
	Return nil on cancel or a valid RxMatcher"
	| regex |
	regex := initialRegexString.
	"loop until we get a valid regex string back"
	[ true ] whileTrue: [
		regex := UIManager default 
			multiLineRequest: aTitleString 
			initialAnswer: regex 
			answerHeight: 200.
		"cancelled dialog ==> nil"	
		regex ifNil: [ ^ nil ].
		
		[ ^ regex asRegex ] on: Error do: [ :regexParsingError|
			WorldState addDeferredUIMessage: [ 
				self inform: 'Bad Regex: ', regexParsingError asString ]]].