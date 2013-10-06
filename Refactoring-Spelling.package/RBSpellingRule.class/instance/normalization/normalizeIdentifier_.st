normalizeIdentifier: aString
	^ self normalizeCamelCase: (aString copyReplaceAll: '_' with: ' ')