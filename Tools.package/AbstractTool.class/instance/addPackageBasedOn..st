package
addPackageBasedOn: aPackage

	| name initialAnswer package |
	initialAnswer := aPackage ifNil: [''] ifNotNil: [:p | p name].
	name := UIManager default request: 'Name of the new package:' initialAnswer: initialAnswer title: 'Create a new package'.
	(name isNil or: [name isEmpty])
		ifFalse: [ package := self browsedEnvironment packageOrganizer createPackageNamed: name ].
	^ package