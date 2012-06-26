diffs
modifiedClassDefinition
	| pClass rClass old new diff |
	pClass := self selectedClassOrMetaClass.
	pClass hasDefinition
		ifFalse: [ ^ pClass definition ].
	rClass := Smalltalk globals at: self selectedClass name asSymbol ifAbsent: [ nil ].
	rClass isNil
		ifTrue: [ ^ pClass definition ].
	self metaClassIndicated
		ifTrue: [ rClass := rClass class ].
	old := rClass definition.
	new := pClass definition.
	Cursor wait showWhile: [ diff := ClassDiffBuilder buildDisplayPatchFrom: old to: new ].
	^ diff