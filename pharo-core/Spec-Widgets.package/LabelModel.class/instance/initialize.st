initialization
initialize
	"Initialization code for LabelModel"

	super initialize.

	textHolder := '' asValueHolder.
	enabledHolder := true asValueHolder.
	textHolder whenChangedDo: [ self changed: #getText ].
	enabledHolder whenChangedDo: [ self changed: #enabled ].