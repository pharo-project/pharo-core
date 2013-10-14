testTutorialsReturnsAllButMockTutorial
	| tutorials |
	tutorials := AbstractTutorial tutorials.
	self assert: (tutorials includes: SmalltalkSyntaxTutorial).
	self assert: (tutorials includes: HowToMakeYourOwnTutorial).
	self deny: (tutorials includes: MockTutorial).