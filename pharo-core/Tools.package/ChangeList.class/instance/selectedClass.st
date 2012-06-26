viewing access
selectedClass
	^(self selectedClassOrMetaClass ifNil: [ ^nil ]) theNonMetaClass 