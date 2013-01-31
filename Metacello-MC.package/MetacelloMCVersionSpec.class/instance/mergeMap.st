merging
mergeMap

	| map |
	map := super mergeMap.
	map at: #packages put: self packages.
	map at: #repositories put: self repositories.
	^map