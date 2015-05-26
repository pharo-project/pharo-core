classesAndMetaClasses
	^classesAndMetaClasses ifNil: [ 
		classesAndMetaClasses := self collectFromAllPackages: #classesAndMetaClasses ]