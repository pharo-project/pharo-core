accessing
className: aString

	super className: aString.
	(projectPackage ~~ nil and: [ projectPackage getFile == nil ])
		ifTrue: [ projectPackage name: aString; file: aString ]