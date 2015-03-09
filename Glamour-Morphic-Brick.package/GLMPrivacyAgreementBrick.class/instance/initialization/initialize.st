initialize
	super initialize.
	
	self useVerticalLinearLayout.
	self basicAgreeCheckboxBrick: self newCheckboxBrick.
	self saveDefaultSettingsButtonBrick: self newButtonBrick. 
	self defaultSettingsInfoBrick: self newTitleBrick.