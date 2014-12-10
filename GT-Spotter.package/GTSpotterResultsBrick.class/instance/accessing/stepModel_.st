stepModel: aModel
	stepModel := aModel.
	
	stepModel candidates announcer subscribe: GTSpotterCandidateAdded send: #onCandidateAdded: to: self.
	stepModel candidates announcer subscribe: GTSpotterAllCandidatesRemoved send: #onAllCandidatesRemoved to: self.
	stepModel candidates announcer subscribe: GTSpotterAllCandidatesAdded send: #onAllCandidatesAdded: to: self.
	stepModel candidates announcer subscribe: GTSpotterSelectedCandidateChanged send: #onSelectedCandidateChanged: to: self.
	stepModel candidates announcer subscribe: GTSpotterCandidatesAmountChanged send: #onCandidatesAmountChanged: to: self.