visiting
writeVersionInfo: aVersionInfo
	| string |
	string := self serializeVersionInfo: aVersionInfo.
	self addString: string at: 'version'.
