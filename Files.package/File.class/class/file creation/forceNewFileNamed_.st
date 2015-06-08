forceNewFileNamed: aName

	^ (self named: aName)
		delete;
		openForWrite