pushHistory
	history add: (self object -> self selectedIndex).
	self toolbar updateButtonStatus.