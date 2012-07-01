asserting
assertExtensionProvidedBy: aClass
	self shouldnt: [aClass readerClass extension] raise: Exception.