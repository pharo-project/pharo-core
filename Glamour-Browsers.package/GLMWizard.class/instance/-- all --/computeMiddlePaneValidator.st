computeMiddlePaneValidator

	|tmpValidator|
	tmpValidator := self computePaneValidator.
	self setMiddlePaneButtonsTo: tmpValidator.
	^ tmpValidator  
