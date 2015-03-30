newBindingLabelIn: aPopup

	^ GLMLabelBrick new
		hSpaceFill: 50;
		vShrinkWrap;
		textPosition: #leftCenter;
		vAlign: #center;
		padding: { 0 . aPopup themer bindingThemer padding }