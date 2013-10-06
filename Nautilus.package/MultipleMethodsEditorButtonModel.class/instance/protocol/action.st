action

	self model ifNil: [ ^ self ].
	self target ifNil: [ ^ self ].
	
	self target vScrollValue: 0.
	self model setCurrent: self target.
	self model updateLayoutForSingleWithButtons.
	state := true.
	self changed: #state.
	self model updateButtonsStateFrom: self