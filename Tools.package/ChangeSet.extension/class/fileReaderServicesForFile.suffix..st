*Tools-FileList
fileReaderServicesForFile: fullName suffix: suffix

	^ (FileStream isSourceFileSuffix: suffix)
		ifTrue: [ self services]
		ifFalse: [#()]