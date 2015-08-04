traditionalBinaryPrecedence: aString
	DefaultPrettyPrintContext traditionalBinaryPrecedence: (self compiler evaluate: aString).
	self announceASettingChange