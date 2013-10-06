privateRemoveClassesFor: aCollection
	
	^ RBRemoveClassRefactoring 
			model: environment 
			classNames: (aCollection collect: [:e | e theNonMetaClass name ])