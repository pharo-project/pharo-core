pushClosureCopyNumCopiedValues: numCopied numArgs: numArgs blockSize: blockSize
	| copiedValues |
	copiedValues := ((1 to: numCopied) collect: [:ign| stack removeLast]) reversed.
	self doClosureCopyCopiedValues: copiedValues numArgs: numArgs blockSize: blockSize