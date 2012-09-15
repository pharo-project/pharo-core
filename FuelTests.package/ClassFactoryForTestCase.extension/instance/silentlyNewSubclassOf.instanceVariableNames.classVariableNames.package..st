*FuelTests
silentlyNewSubclassOf: aClass instanceVariableNames: ivNamesString classVariableNames:  classVarsString package: packageName

	| default newClass |
	SystemAnnouncer uniqueInstance suspendAllWhile: [
		newClass := aClass 
			subclass: self newName 
			instanceVariableNames: ivNamesString 
			classVariableNames: classVarsString 
			poolDictionaries: '' 
			category: packageName asSymbol.
	].

	self createdClasses add: newClass.
	^newClass
	