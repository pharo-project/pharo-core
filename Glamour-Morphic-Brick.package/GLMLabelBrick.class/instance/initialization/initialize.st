initialize
	super initialize.
	
	stringBrick := self newStringBrick.
	dotsBrick := self newStringBrick.
	
	self
		hShrinkWrap;
		vShrinkWrap.
	
	stringBrick
			"hSpaceFill;
			vSpaceFill;"
			marginRight: self defaultInsetBeforeDots.
	self privateAddBrickBack: stringBrick.
	
	"creating dots morph, that will be displayed when text is being clipped"
	dotsBrick text: self defaultDotsText.
	dotsBrick fontSize: 9.
	dotsBrick width: [ :b | b approximateWidth ].
	dotsBrick vSpaceFill.
	
	isDotsAdded := false
	