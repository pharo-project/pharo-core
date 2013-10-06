file: aString
	self projectPackage name ifNil: [ self projectPackage name: aString ].
	self projectPackage file: aString