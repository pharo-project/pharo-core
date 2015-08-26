registerFileReader
	self
		deprecated:
			'You do not need to register anymore. You just need a method that takes two parameters (a file name and an extension) with a pragma <fileService>. See Form class>>fileReaderServicesForFile:suffix:'
		on: '21 August 2015'
		in: 'Pharo5'