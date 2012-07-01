private
allSubclassesWithLevelDo: classAndLevelBlock startingLevel: level
	^ (self realClass ifNil: [ ^self ])  allSubclassesWithLevelDo: classAndLevelBlock startingLevel: level