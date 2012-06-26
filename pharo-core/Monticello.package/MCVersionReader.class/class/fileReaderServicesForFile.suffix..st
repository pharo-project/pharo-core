file services
fileReaderServicesForFile: fullName suffix: suffix
	self isAbstract ifTrue: [^ #()].
	^ ((suffix = self extension) or: [ suffix = '*' ])
		ifTrue: [self services]
		ifFalse: [Array new: 0]
		