utilities
makeIVarsSubclassOf: aClass
	subClass := aClass subclass: self subClassName
		instanceVariableNames: 'var3 var4'
		classVariableNames: ''
		poolDictionaries: ''
		category: self categoryNameForTemporaryClasses