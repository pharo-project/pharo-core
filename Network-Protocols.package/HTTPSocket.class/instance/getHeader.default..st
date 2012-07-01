accessing
getHeader: name  default: defaultValue
	^headers at: name ifAbsent: [defaultValue]