stepModel: aModel
	stepModel := aModel.
	
	stepModel candidates announcer weak when: GTSpotterCandidateAdded send: #onCandidateAdded: to: self.
	stepModel candidates announcer weak when: GTSpotterAllCandidatesRemoved send: #onAllCandidatesRemoved to: self.
	stepModel candidates announcer weak when: GTSpotterAllCandidatesAdded send: #onAllCandidatesAdded: to: self.
	stepModel candidates announcer weak when: GTSpotterCandidatesAmountChanged send: #onCandidatesAmountChanged: to: self.
	stepModel announcer weak when: GTSpotterScrollPageDown send: #scrollPageDown to: self.
	stepModel announcer weak when: GTSpotterScrollPageUp send: #scrollPageUp to: self.
	stepModel spotter announcer weak when: GTSpotterCandidateSelected send: #onCandidateSelected: to: self.