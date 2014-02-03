hasToDoOf: ruleId version: versionId
	^ manifestClass respondsTo: (self selectorToDoOf: ruleId version: versionId)  
	