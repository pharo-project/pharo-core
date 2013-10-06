on: anObject getState: getStateSel action: actionSel label: labelSel menu: menuSel
	"Set up the pluggable parameters.
	Update label and state."
	
	self model: anObject.
	getStateSelector := getStateSel.
	actionSelector := actionSel.
	getLabelSelector := labelSel.
	getMenuSelector := menuSel.
	self
		update: labelSel;
		update: getStateSel
