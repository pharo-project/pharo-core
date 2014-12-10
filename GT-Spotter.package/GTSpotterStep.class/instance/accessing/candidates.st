candidates

	^ candidates ifNil: [
		candidates := GTSpotterCandidatesList new.
		candidates announcer subscribe: GTSpotterCandidateAdded do: [ self selectFirst ].
		candidates announcer subscribe: GTSpotterAllCandidatesAdded do: [ self selectFirst ].
		candidates ]