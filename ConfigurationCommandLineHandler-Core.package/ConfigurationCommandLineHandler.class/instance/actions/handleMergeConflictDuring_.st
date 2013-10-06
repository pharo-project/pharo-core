handleMergeConflictDuring: aLoadBlock
	aLoadBlock on: MCMergeOrLoadWarning do: [ :mergeConflict |
		mergeConflict merge ]