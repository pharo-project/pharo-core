defaultClassDescriptor

	| string |
	string := 'Object subclass: #NameOfSubclass
	instanceVariableNames: ''''
	classVariableNames: ''''
	category: '''.
	^ self selectedPackage
		ifNil: [string, '''' ]
		ifNotNil: [:package | string, package name, '''' ]