candidates

	^ candidates ifNil: [
		candidates := GTSpotterCandidatesList new.
		candidates announcer weak subscribe: GTSpotterCandidateAdded do: [ self candidates hasOnlyOneItem ifTrue: [ self selectFirst ] ].
		candidates announcer weak subscribe: GTSpotterAllCandidatesAdded do: [ self selectFirst ].
		candidates announcer weak subscribe: GTSpotterAllCandidatesRemoved do: [ self selected: nil ].
		candidates ]