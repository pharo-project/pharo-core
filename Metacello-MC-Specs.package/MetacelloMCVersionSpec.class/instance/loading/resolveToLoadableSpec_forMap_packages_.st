resolveToLoadableSpec: aString forMap: map packages: packageMap 
	| package |
	package := self packageNamed: aString forMap: map ifAbsent: [ ^self error: 'Name not found: ' , aString ].
	packageMap at: package name put: package.
	^ {package}