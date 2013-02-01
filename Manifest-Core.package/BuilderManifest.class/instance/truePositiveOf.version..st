manifest
truePositiveOf: ruleId version: versionId 

	^ self unwrap: (
		manifestClass 
			perform:   (self selectorTruePositiveOf: ruleId version: versionId))