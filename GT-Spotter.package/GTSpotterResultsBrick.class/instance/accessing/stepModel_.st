stepModel: aModel
	stepModel := aModel.
	
	stepModel candidates announcer weak subscribe: GTSpotterCandidateAdded send: #onCandidateAdded: to: self.
	stepModel candidates announcer weak subscribe: GTSpotterAllCandidatesRemoved send: #onAllCandidatesRemoved to: self.
	stepModel candidates announcer weak subscribe: GTSpotterAllCandidatesAdded send: #onAllCandidatesAdded: to: self.
	stepModel candidates announcer weak subscribe: GTSpotterCandidatesAmountChanged send: #onCandidatesAmountChanged: to: self.
	stepModel announcer weak subscribe: GTSpotterScrollPageDown send: #scrollPageDown to: self.
	stepModel announcer weak subscribe: GTSpotterScrollPageUp send: #scrollPageUp to: self.
	stepModel spotter announcer weak subscribe: GTSpotterCandidateSelected send: #onCandidateSelected: to: self.