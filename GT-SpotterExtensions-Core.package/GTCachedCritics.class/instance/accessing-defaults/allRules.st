allRules
	" By default we sort rules by priority (error > warning > information). This method is very expensive - the result should always be cached  "
	^ (((RBLintRule withAllSubclasses 
			select: [ :each | each isVisible ])
			collect: [ :each | each new ])
			reject: [ :each | each isTransformationRule ])
				sorted: [ :a :b | a gtSeverity < b gtSeverity ]