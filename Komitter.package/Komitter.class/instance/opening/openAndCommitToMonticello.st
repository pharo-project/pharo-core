openAndCommitToMonticello

	self open.
	self lastCommit ifNotNil: [ self lastCommit commitToMonticello ]