asRBRefactoring
	^ RBCompositeRefactoryChange new
		changes: (childrenRefactorings collect: #asRBRefactoring);
		yourself