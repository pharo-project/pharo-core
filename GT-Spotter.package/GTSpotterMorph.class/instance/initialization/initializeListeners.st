initializeListeners

	self activeHand addEventListener: self.
	
	Morph announcer weak on: MorphLostFocus send: #onLostFocus: to: self.
	
	self bindKeyCombination: Character escape toAction: [ self spotterModel exit ].
	self bindKeyCombination: $w command toAction: [ self spotterModel exit ].
	self bindKeyCombination: $p command toAction: [ self togglePreview ].
	
	self bindKeyCombination: Character arrowUp toAction: [ self selectPreviousCandidate ].
	self bindKeyCombination: Character arrowDown toAction: [ self selectNextCandidate ].
	self bindKeyCombination: Character arrowUp command toAction: [ self selectPreviousCandidate ].
	self bindKeyCombination: Character arrowDown command toAction: [ self selectNextCandidate ].
	self bindKeyCombination: Character arrowUp shift toAction: [ self selectPreviousCandidate ].
	self bindKeyCombination: Character arrowDown shift toAction: [ self selectNextCandidate ].
	
	self bindKeyCombination: Character arrowUp command shift toAction: [ self selectPreviousCategory ].
	self bindKeyCombination: Character arrowDown command shift toAction: [ self selectNextCategory ].
	
	self bindKeyCombination: Character arrowRight command toAction: [ self diveIn ].
	self bindKeyCombination: Character arrowLeft command toAction: [ self diveOut ].

	self bindKeyCombination: Character arrowRight command shift toAction: [ self diveInCategory ].
	self bindKeyCombination: Character arrowLeft command shift toAction: [ self diveOut ].
	
	self bindKeyCombination: Character arrowUp alt toAction: [ self stepScrollPageUp ].
	self bindKeyCombination: Character arrowDown alt toAction: [ self stepScrollPageDown ].
	self bindKeyCombination: Character pageUp toAction: [ self stepScrollPageUp ].
	self bindKeyCombination: Character pageDown toAction: [ self stepScrollPageDown ].
	
	self 
		bindKeyCombination: Character cr asKeyCombination 
		toAction: [ self act ].
		
	self 
		bindKeyCombination: $p command shift 
		toAction: [ self exportAsPNGSilently ]