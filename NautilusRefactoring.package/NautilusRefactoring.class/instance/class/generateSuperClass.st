generateSuperClass
	"Execute the refactoring of the receiver."

	| refactoring |
	refactoring := self privateGenerateSuperClassFor: self model selectedClass theNonMetaClass.
	refactoring ifNil: [ ^ self ].
	refactoring model environment: self model browsedEnvironment.
	self performRefactoring: refactoring.