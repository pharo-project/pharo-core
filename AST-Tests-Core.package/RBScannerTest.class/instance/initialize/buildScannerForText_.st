buildScannerForText: source
	^RBScanner on: (ReadStream on: source)