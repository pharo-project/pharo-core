transforming
transform
	class 
		renameInstanceVariable: variableName
		to: newName
		around: [self renameReferences]