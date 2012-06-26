testing
canBeNonGlobalVarInitial

	^ (EncodedCharSet charsetAt: self leadingChar) canBeNonGlobalVarInitial: self.
