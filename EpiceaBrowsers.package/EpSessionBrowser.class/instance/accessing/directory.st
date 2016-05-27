directory

	self flag: #todo. "The base locator could have a wrong fileSystem"

	^ directory ifNil: [ EpMonitor current log store baseLocator asFileReference ]