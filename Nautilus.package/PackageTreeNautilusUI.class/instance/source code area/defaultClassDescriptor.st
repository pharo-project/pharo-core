defaultClassDescriptor
	| string |
	
	string := 'Object subclass: #NameOfSubclass
	instanceVariableNames: ''''
	classVariableNames: ''''
	poolDictionaries: ''''
	category: '''.
	^ self selectedPackage
		ifNotNil: [ :package | string, package categoryName, '''' ]
		ifNil: [ string, '''' ]
		