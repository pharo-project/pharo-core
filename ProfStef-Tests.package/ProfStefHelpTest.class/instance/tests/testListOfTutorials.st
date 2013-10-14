testListOfTutorials
	| helpTopic |
	helpTopic  := ProfStefHelp listOfTutorials.
	self assert: (helpTopic notNil).
	self assert: (helpTopic title =  'List of tutorials'  )