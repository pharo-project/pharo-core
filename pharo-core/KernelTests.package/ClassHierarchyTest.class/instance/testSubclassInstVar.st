as yet unclassified
testSubclassInstVar
	| subclasses |
	SystemNavigation default allClassesDo: [ :cls|
		subclasses := cls subclasses.
		self assert: subclasses isNil not.
		subclasses do: [:subclass|
			self assert: (subclasses occurrencesOf: subclass) = 1.
			self assert: subclass superclass == cls.
			"cls removeSubclass: subclass.
			cls addSubclass: subclass."]]