buildItemFor: aCandidateLink in: aProcessor
	|itemBrick|
	itemBrick := (aProcessor render: aCandidateLink value)
			candidateLink: aCandidateLink;
			stepModel: self stepModel;
			yourself.
			
	itemBrick announcer subscribe: GTSpotterCandidateSelected send: #onCandidateSelected: to: self.
	^ itemBrick
	