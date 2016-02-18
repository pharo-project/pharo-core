variableWordSubclass: className instanceVariableNames: instVarNames
	classVariableNames: classVarNames package: cat
	"
	Variable word is like variable byte (ByteArray), variable size, with indices instead of named instance variables, but each index points to a full word (either 32 or 64bit depending on the VM).
	"
	 
	^ self variableWordSubclass: className
		instanceVariableNames: instVarNames  
		classVariableNames: classVarNames 
		poolDictionaries: ''
		package: cat