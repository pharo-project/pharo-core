accessing
allSuperclasses
	^ (self realClass ifNil: [ ^#() ]) allSuperclasses