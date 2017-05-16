referenceCommit
	^ referenceCommit ifNil: [ referenceCommit := self computeReferenceCommit ]