newSubclassNamed: nameString of: aClass  instanceVariableNames: ivNamesString classVariableNames: classVarsString
	<flExtensionOf: #FLSerializationTest>
	| class |
	SystemChangeNotifier uniqueInstance doSilently: [
		class := aClass
			subclass: nameString asSymbol
			instanceVariableNames: ivNamesString
			classVariableNames:  classVarsString
			poolDictionaries: ''
			category: self classFactory defaultCategory
	].
	self classFactory createdClasses add: class.
	^ class