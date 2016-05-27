rename: oldName to: newName
	^ self basicNew
		initializeFrom: oldName
		to: newName;
		yourself