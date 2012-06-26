*NautilusRefactoring
whatToDisplayIn: aBrowser 
	
	^ self changes changes gather: [:e | e whatToDisplayIn: aBrowser ]