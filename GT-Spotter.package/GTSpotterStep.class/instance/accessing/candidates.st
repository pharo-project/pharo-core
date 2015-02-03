candidates

	^ candidates ifNil: [
		candidates := GTSpotterCandidatesList new.
		candidates announcer weak subscribe: GTSpotterCandidateAdded do: [ self selectFirst ].
		candidates announcer weak subscribe: GTSpotterAllCandidatesAdded do: [ self selectFirst ].
		candidates ]