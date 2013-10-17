absoluteWindowsPathRegex
	^ absoluteWindowsPathRegex ifNil: [ absoluteWindowsPathRegex := '[a-zA-Z]\:\\.*' asRegex ]