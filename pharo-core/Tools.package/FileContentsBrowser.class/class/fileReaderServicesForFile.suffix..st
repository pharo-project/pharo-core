file list services
fileReaderServicesForFile: fullName suffix: suffix

	((FileStream isSourceFileSuffix: suffix) or: [ suffix = '*' ])
		ifTrue: [ ^Array with: self serviceBrowseCode].

	^(fullName endsWith: 'cs.gz')
		ifTrue: [ Array with: self serviceBrowseCompressedCode ]
		ifFalse: [#()]
