simpleSuffixForMimeType: mimeType
	^(self defaultSuffixes at: mimeType printString ifAbsent: [self  huntForDashAndRemove: mimeType sub]) asSymbol