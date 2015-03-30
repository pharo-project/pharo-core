iconForTestCase: aTestCase
	| result |
	result := aTestCase class lastRun.
	((result at: #errors) includes: aTestCase selector) ifTrue: [ ^ Smalltalk ui icons testRedIcon ].
	((result at: #failures) includes: aTestCase selector) ifTrue: [ ^ Smalltalk ui icons testYellowIcon ].
	((result at: #passed) includes: aTestCase selector) ifTrue: [ ^ Smalltalk ui icons testGreenIcon ].
	^ Smalltalk ui icons testNotRunIcon