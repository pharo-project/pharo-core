actions
addVersion: aVersion
	| file |
	file := FileStream newFileNamed: (directory fullNameFor: aVersion fileName).
	aVersion fileOutOn: file.
	file close.