manifest
toDoOf: ruleId version: versionId 

	^ self unwrap: (
		manifestClass perform: (self selectorToDoOf: ruleId version: versionId))