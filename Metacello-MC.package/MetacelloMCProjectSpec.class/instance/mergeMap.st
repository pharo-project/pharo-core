merging
mergeMap

	| map |
	map := super mergeMap.
	map at: #projectPackage put: projectPackage.
	^map