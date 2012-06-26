as yet unclassified
extent: aPoint
	"Refit the base morphs and potential 'more' button'"

	super extent: aPoint.
	self fitBaseMorphs.
	WorldState addDeferredUIMessage: [self layoutChanged]
		"since possibly changing actual submorphs during layout processing"