Private
removeGeneratedTestClasses
	"Remove all classes that were possibly generated during testing."
	
	| possiblyToRemove |
	possiblyToRemove := OrderedCollection
		with: self generatedTestClassName
		with: self generatedTestClassNameX
		with: self renamedTestClassName
		with: self newlyCreatedClassName.
	possiblyToRemove do: [:name | (Smalltalk globals hasClassNamed: name) ifTrue: [(Smalltalk globals at: name) removeFromSystemUnlogged]]