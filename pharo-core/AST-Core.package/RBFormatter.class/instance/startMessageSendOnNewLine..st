testing
startMessageSendOnNewLine: aMessageNode 
	(self selectorsToStartOnNewLine includes: aMessageNode selector) 
		ifTrue: [^true].
	(self selectorsToLeaveOnLine includes: aMessageNode selector) 
		ifTrue: [^false].
	^aMessageNode selector numArgs > self maximumArgumentsPerLine