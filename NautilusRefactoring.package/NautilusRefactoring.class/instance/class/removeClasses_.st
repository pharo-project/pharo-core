removeClasses: aCollection
	"Execute the refactoring of the receiver."

	| refactoring |
	refactoring := self privateRemoveClassesFor: aCollection.
	refactoring ifNil: [ ^ false ].
	refactoring model environment: self model browsedEnvironment.
	self performRefactoring: refactoring.
	^ true