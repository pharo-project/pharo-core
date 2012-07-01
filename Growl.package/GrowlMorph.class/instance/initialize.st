initialize
initialize
	super initialize.

	self borderColor: self defaultBorderColor.
	self borderWidth: 2.
	self useRoundedCorners.
	self setProperty: #autoFitContents toValue: false.
	"self setTextStyle: self defaultTextStyle."
	self initializeLabelAttributes.
	self initializeContentsAttributes.
	self vanishDelay: self defaultVanishDelay.
	self label: 'A cool title' contents: 'Here an important message'.
	dismissHandle := self createDismissHandle.
	self addMorph: dismissHandle