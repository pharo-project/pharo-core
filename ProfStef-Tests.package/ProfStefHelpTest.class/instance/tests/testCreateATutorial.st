testCreateATutorial
	| helpTopic |
	helpTopic := ProfStefHelp createATutorial.
	self assert: helpTopic notNil.
	self assert: helpTopic class == HelpTopic.
	self assert: helpTopic title = 'Create a tutorial'