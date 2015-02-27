initialize
	super initialize.
	color := Color transparent.
	submorphs := OrderedCollection new.
	
	self
		layoutProperties: GLMBrickLayoutProperties new;
		useHorizontalLinearLayout;
		renderer: GLMBrickRenderer new