private
isAbsoluteWindowsPath: aString
	^aString matchesRegex: '[a-zA-Z]\:\\.*'