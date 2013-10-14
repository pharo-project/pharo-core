testIntroduction
	| helpTopic |
	helpTopic := ProfStefHelp introduction.
	self assert: helpTopic notNil.
	self assert: helpTopic class == HelpTopic.
	self assert: helpTopic title = 'Introduction'