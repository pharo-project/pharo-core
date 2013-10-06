falsePositiveOf: ruleId version: versionId 

	^ self unwrap: (manifestClass perform: (self selectorFalsePositiveOf: ruleId version: versionId))