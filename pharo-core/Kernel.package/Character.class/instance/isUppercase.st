testing
isUppercase

	^ (EncodedCharSet charsetAt: self leadingChar) isUppercase: self.
