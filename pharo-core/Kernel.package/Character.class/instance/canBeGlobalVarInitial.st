testing
canBeGlobalVarInitial

	^ (EncodedCharSet charsetAt: self leadingChar) canBeGlobalVarInitial: self.
