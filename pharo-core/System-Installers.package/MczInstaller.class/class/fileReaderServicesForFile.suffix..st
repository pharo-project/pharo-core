services
fileReaderServicesForFile: fileName suffix: suffix
	^({ self extension. '*' } includes: suffix)
		ifTrue: [ self services ]
		ifFalse: [#()].
