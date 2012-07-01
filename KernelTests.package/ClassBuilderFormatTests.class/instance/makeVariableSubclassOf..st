utilities
makeVariableSubclassOf: aClass
	subClass := aClass variableSubclass: self subClassName
		instanceVariableNames: ''
		classVariableNames: ''
		poolDictionaries: ''
		category: self categoryNameForTemporaryClasses.