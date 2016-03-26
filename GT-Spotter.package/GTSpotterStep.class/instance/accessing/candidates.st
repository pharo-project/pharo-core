candidates

	^ candidates ifNil: [
		candidates := GTSpotterCandidatesList new.
		candidates announcer weak subscribe: GTSpotterCandidateAdded send: #onCandidateAdded to: self.
		candidates announcer weak subscribe: GTSpotterAllCandidatesAdded send: #onCandidateAdded to: self.
		candidates announcer subscribe: GTSpotterAllCandidatesRemoved do: [ self deselect ].
		candidates ]