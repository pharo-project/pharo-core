System-FileRegistry
fileReaderServicesForFile: fullName suffix: suffix
	<fileService>
	self isAbstract ifTrue: [^ #()].
	^ ((suffix = self extension) or: [ suffix = '*' ])
		ifTrue: [self services]
		ifFalse: [Array new: 0]
		