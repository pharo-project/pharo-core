initialize
initialize
	"Initialization code for PluggableTextMorphWithLimits"

	super initialize.
	locked := false.
	lockIcon := self defaultOpenMorph.
	self addIcon.
	lockIcon on: #mouseEnter send: #colorize to: self.
	lockIcon on: #mouseLeave send: #decolorize to: self.
	lockIcon on: #click send: #toggleLock to: self