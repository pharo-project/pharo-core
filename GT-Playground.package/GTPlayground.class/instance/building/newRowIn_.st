newRowIn: aPopup

	^ GLMInteractableBrick new
		enable;
		selectedColor: aPopup themer bindingThemer selectedColor;
		vShrinkWrap;
		hSpaceFill;
		padding: { aPopup themer bindingThemer padding . 0 . aPopup themer bindingThemer padding + aPopup themer bindingThemer borderWidth };
		borderColor: aPopup themer bindingThemer borderColor