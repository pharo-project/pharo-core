utility
createNewClassNamed: aName
	
	| cls |
	cls := Object subclass: aName
		instanceVariableNames: ''
		classVariableNames: ''
		poolDictionaries: ''
		category: 'RPackageTest'.
	createdClasses add: cls.
	^ cls