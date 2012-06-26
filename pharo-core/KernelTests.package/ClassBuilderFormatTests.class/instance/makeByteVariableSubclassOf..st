utilities
makeByteVariableSubclassOf: aClass
	subClass := aClass variableByteSubclass: self subClassName
		instanceVariableNames: ''
		classVariableNames: ''
		poolDictionaries: ''
		category: self categoryNameForTemporaryClasses