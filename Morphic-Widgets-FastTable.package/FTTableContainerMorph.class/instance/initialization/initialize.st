initialize 
	super initialize.
	self eventHandler: MorphicEventHandler new.
	self color: Color transparent.
	needsRefreshExposedRows := false