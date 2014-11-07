initialize
	super initialize.
	
	stringBrick := self newStringBrick.
	stringBrick layoutProperties horizontalPercent: 100.
	stringBrick layoutProperties marginRight: self defaultInsetBeforeDots.
	self addBrickBack: stringBrick.
	
	"creating dots morph, that will be displayed when text is being clipped"
	dotsBrick := GLMStringBrick new.
	dotsBrick layoutProperties horizontalPercent: 0.
	dotsBrick text: self defaultDotsText.
	dotsBrick layoutProperties minWidth: (dotsBrick textSize x).
	
	isDotsAdded := false.
	