computeSinglePaneValidator

	|tmpValidator|
	tmpValidator := self computePaneValidator.
	self setSinglePaneButtonsTo: tmpValidator.
	^ tmpValidator  
