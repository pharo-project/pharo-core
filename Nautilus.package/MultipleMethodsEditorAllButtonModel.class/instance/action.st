protocol
action

	self model 
		updateScrollerWithMultipleElementsWithoutButtons;
		updateLayoutForMultiple.
	state := true.
	self changed: #state.
	self model updateButtonsStateFrom: self