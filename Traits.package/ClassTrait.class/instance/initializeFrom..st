initialize
initializeFrom: anotherClassTrait
	traitComposition := self traitComposition copyTraitExpression.
	methodDict := self methodDict copy.
	localSelectors := self localSelectors copy.
	organization := self organization copy.