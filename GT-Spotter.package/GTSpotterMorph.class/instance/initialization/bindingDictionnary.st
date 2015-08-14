bindingDictionnary
	^ {Character escape -> [ self spotterModel exitDueTo: #keyPressedEscape ].
	$w command -> [ self spotterModel exitDueTo: #keyPressedW ].
	$p command -> [ self togglePreview ].
	Character arrowUp -> [ self selectPreviousCandidateDueTo: #keyPressedArrowUp ].
	Character arrowDown -> [ self selectNextCandidateDueTo: #keyPressedArrowDown ].
	Character arrowUp command -> [ self selectPreviousCandidateDueTo: #keyPressedArrowUp ].
	Character arrowDown command -> [ self selectNextCandidateDueTo: #keyPressedArrowDown ].
	Character arrowUp shift -> [ self selectPreviousCandidateDueTo: #keyPressedArrowUp ].
	Character arrowDown shift -> [ self selectNextCandidateDueTo: #keyPressedArrowDown ].
	Character arrowUp command shift -> [ self selectPreviousCategory ].
	Character arrowDown command shift -> [ self selectNextCategory ].
	Character arrowRight command -> [ self diveInDueTo: #keyPressed ].
	Character arrowLeft command -> [ self diveOut ].
	Character arrowRight command shift -> [ self diveInCategoryDueTo: #keyPressed ].
	Character arrowLeft command shift -> [ self diveOut ].
	Character arrowUp alt -> [ self stepScrollPageUp ].
	Character arrowDown alt -> [ self stepScrollPageDown ].
	Character pageUp -> [ self stepScrollPageUp ].
	Character pageDown -> [ self stepScrollPageDown ].
	Character cr asKeyCombination -> [ self actDueTo: #keyPressed ].
	$p command shift -> [ self exportAsPNGSilently ]}