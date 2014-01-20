defaultClassDescriptor
	| string |
	
	string := 'Object subclass: #NameOfSubclass
	instanceVariableNames: ''''
	classVariableNames: ''''
	category: '''.
	^ self selectedPackage
		ifNotNil: [ :package | string, package categoryName, '''' ]
		ifNil: [ string, '''' ]
		