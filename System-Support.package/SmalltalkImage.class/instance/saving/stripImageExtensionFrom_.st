stripImageExtensionFrom: aString

	| answer imageExtension delimitedImageExtension |
	answer := aString.
	imageExtension := Path extensionDelimiter asString, self imageSuffix.
	delimitedImageExtension := imageExtension copyWith: Path extensionDelimiter.
	[(answer endsWith: imageExtension) or: [answer endsWith: delimitedImageExtension]]
		whileTrue: [answer := answer copyUpToLast: Path extensionDelimiter].
	^answer