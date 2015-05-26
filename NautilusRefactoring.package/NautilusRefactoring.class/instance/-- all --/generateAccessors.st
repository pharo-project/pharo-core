generateAccessors

	| refactorings |
	refactorings := self privateGenerateAccessorsFor: self model selectedClass.
	refactorings ifNil: [ ^ self ].
	refactorings do: [:each | each model environment: self model browsedEnvironment ].
	self performRefactorings: refactorings