stream

	^ stream ifNil: [
		stream := GTSpotterUIThreadStream new.
		stream
			onAddedSelector: #addCandidate:in:;
			onRemoveSelector: #removeAllCandidatesOf:;
			receiver: self candidates.
		stream ]