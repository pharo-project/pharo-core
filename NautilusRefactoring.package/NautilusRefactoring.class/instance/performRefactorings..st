performing
performRefactorings: aCollectionRefactoring

		[[ self internalPerformRefactorings: aCollectionRefactoring ]
			on: RBRefactoringWarning
			do: [ :exception | self handleWarning: exception ]]
			on: RBRefactoringError
			do: [ :exception | self handleError: exception ]