testing
isLowercase

	^ (EncodedCharSet charsetAt: self leadingChar) isLowercase: self.
