findLogFilesIn: aDirectory

	^(aDirectory files
		select: [ :each | each extension = 'ombu'  ])
		sorted: [ :a :b | a modificationTime >= b modificationTime ]