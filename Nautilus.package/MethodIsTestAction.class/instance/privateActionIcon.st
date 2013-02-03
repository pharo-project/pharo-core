order
privateActionIcon
	"Return the icon for this action"
	| testIcon |
	
	testIcon := self iconClass iconNamed: #testNotRun.
	
	method hasPassedTest
		ifTrue: [ testIcon := self iconClass iconNamed: #testGreen ].
	method hasFailedTest
		ifTrue: [ testIcon := self iconClass iconNamed: #testYellow ].
	method hasErrorTest
		ifTrue: [ testIcon := self iconClass iconNamed: #testRed ].
	
	^ IconicButton new
		target: self browser;
		actionSelector: #runTestForAMethod:notifying:;
		arguments: {method. true};
		labelGraphic: testIcon;
		color: Color transparent;
		helpText: 'Run the test';
		extent: 12 @ 12;
		borderWidth: 0