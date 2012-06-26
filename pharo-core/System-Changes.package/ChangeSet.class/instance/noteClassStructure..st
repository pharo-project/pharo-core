class changes
noteClassStructure: aClass
	"Save the instance variable names of this class and all of its superclasses.  Later we can tell how it changed and write a conversion method.  The conversion method is used when old format objects are brought in from the disk from ImageSegment files (.extSeg) or SmartRefStream files (.obj .morph .bo .sp)."

	| clsName |
	aClass isBehavior ifFalse: [^ self].
	
	structures ifNil: [structures := Dictionary new.
				superclasses := Dictionary new].
	clsName := (aClass name asLowercase beginsWith: 'anobsolete') 
		ifTrue: [(aClass name copyFrom: 11 to: aClass name size) asSymbol]
		ifFalse: [aClass name].
	(structures includesKey: clsName) ifFalse: [
		structures at: clsName put: 
			((Array with: aClass classVersion), (aClass allInstVarNames)).
		superclasses at: clsName put: aClass superclass name].
	"up the superclass chain"
	aClass superclass ifNotNil: [self noteClassStructure: aClass superclass].
