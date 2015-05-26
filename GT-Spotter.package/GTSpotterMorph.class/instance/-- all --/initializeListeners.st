initializeListeners

	self activeHand addEventListener: self.
	
	Morph announcer weak on: MorphLostFocus send: #onLostFocus: to: self.
	
	self bindKeyCombination: Character escape toAction: [ self spotterModel exitDueTo: #keyPressedEscape ].
	self bindKeyCombination: $w command toAction: [ self spotterModel exitDueTo: #keyPressedW ].
	self bindKeyCombination: $p command toAction: [ self togglePreview ].
	
	self bindKeyCombination: Character arrowUp toAction: [ self selectPreviousCandidateDueTo: #keyPressedArrowUp ].
	self bindKeyCombination: Character arrowDown toAction: [ self selectNextCandidateDueTo: #keyPressedArrowDown ].
	self bindKeyCombination: Character arrowUp command toAction: [ self selectPreviousCandidateDueTo: #keyPressedArrowUp ].
	self bindKeyCombination: Character arrowDown command toAction: [ self selectNextCandidateDueTo: #keyPressedArrowDown ].
	self bindKeyCombination: Character arrowUp shift toAction: [ self selectPreviousCandidateDueTo: #keyPressedArrowUp ].
	self bindKeyCombination: Character arrowDown shift toAction: [ self selectNextCandidateDueTo: #keyPressedArrowDown ].
	
	self bindKeyCombination: Character arrowUp command shift toAction: [ self selectPreviousCategory ].
	self bindKeyCombination: Character arrowDown command shift toAction: [ self selectNextCategory ].
	
	self bindKeyCombination: Character arrowRight command toAction: [ self diveInDueTo: #keyPressed ].
	self bindKeyCombination: Character arrowLeft command toAction: [ self diveOut ].

	self bindKeyCombination: Character arrowRight command shift toAction: [ self diveInCategoryDueTo: #keyPressed ].
	self bindKeyCombination: Character arrowLeft command shift toAction: [ self diveOut ].
	
	self bindKeyCombination: Character arrowUp alt toAction: [ self stepScrollPageUp ].
	self bindKeyCombination: Character arrowDown alt toAction: [ self stepScrollPageDown ].
	self bindKeyCombination: Character pageUp toAction: [ self stepScrollPageUp ].
	self bindKeyCombination: Character pageDown toAction: [ self stepScrollPageDown ].
	
	self 
		bindKeyCombination: Character cr asKeyCombination 
		toAction: [ self actDueTo: #keyPressed ].
		
	self 
		bindKeyCombination: $p command shift 
		toAction: [ self exportAsPNGSilently ]