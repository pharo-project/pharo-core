versions
	self selectedClass ifNotNil: [ :class |
		self selectedMethod ifNotNil: [:selector |
			Smalltalk tools versionBrowser browseVersionsForClass: class selector: selector]]