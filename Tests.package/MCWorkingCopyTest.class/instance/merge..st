actions
merge: aVersion
	[[self basicMerge: aVersion]
		on: MCMergeResolutionRequest do: [:n | n resume: true]]
			on: MCNoChangesException do: [:n | ]