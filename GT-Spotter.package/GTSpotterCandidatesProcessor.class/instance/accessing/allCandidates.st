allCandidates

	^ allCandidates ifNil: [ allCandidates := self computeCandidates copy ].