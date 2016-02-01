variableWordSubclass: className instanceVariableNames: instVarNames
	classVariableNames: classVarNames package: cat
	"Added to allow for a simplified subclass creation experience. "
	 
	^ self variableWordSubclass: className
		instanceVariableNames: instVarNames  
		classVariableNames: classVarNames 
		poolDictionaries: ''
		package: cat