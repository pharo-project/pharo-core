immediateByteSubclass: className instanceVariableNames: instvarNames classVariableNames: classVarNames package: cat
	"Added to allow for a simplified subclass creation experience. "

	^ self
		immediateSubclass: className
		instanceVariableNames: instvarNames
		classVariableNames: classVarNames
		category: cat