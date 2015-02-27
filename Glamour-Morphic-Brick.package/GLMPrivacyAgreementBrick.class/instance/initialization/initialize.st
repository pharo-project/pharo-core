initialize
	super initialize.
	
	self useVerticalLinearLayout.
	self addCancelButton.
	self titleBrick: self newTitleBrick.
	self checkboxBrick: self newCheckboxBrick.
	self buttonsBrick: self newButtonsBrick.
	self advancedBrick: self newAdvancedBrick.
	self addSubmitButton.
	self addShowMoreButton