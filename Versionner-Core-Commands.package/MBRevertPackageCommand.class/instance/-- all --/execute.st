execute

	self pickAncestorVersionInfo ifNotNilDo: [:info |
		(target workingCopy repositoryGroup versionWithInfo: info
			ifNone: [^self inform: 'No repository found for ', info name]
		) load].
