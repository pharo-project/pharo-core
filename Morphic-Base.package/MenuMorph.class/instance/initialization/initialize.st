initialize
	super initialize.
	
	self setDefaultParameters.
	self listDirection: #topToBottom.
	self hResizing: #shrinkWrap.
	self vResizing: #shrinkWrap.
	defaultTarget := nil.
	selectedItem := nil.
	stayUp := false.
	popUpOwner := nil.
	menuItems := OrderedCollection new.
	self setProperty: #morphicLayerNumber toValue: self morphicLayerNumber.
	self theme currentSettings preferRoundCorner
		ifTrue: [ self useRoundedCorners ]