defaultClassDescriptor
	| string |
	string := Slot showSlotClassDefinition
		ifTrue: [ 
			'Object subclass: #NameOfSubclass
	slots: {}
	classVariables: {}
	category: ''' ]
		ifFalse: [ 
			'Object subclass: #NameOfSubclass
	instanceVariableNames: ''''
	classVariableNames: ''''
	category: ''' ].
	^ self selectedPackage ifNotNil: [ :package | string , package categoryName , '''' ] ifNil: [ string , '''' ]