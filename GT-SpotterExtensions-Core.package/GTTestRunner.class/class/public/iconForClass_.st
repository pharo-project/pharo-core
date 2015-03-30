iconForClass: aClass
	| result |
	result := aClass lastRun.
	(result at: #errors) ifNotEmpty: [ ^ Smalltalk ui icons testRedIcon ].
	(result at: #failures) ifNotEmpty: [ ^ Smalltalk ui icons testYellowIcon ].
	(result at: #passed) ifNotEmpty: [ ^ Smalltalk ui icons testGreenIcon ].
	^ Smalltalk ui icons testNotRunIcon