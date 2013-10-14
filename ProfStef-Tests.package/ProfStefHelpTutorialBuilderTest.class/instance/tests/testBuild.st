testBuild
	| helpTopic builder tutorial |
	tutorial := ProfStefTutorialsHelp.
	helpTopic := ProfStefHelpTutorialBuilder buildHelpTopicFrom: tutorial.
	self assert: helpTopic notNil