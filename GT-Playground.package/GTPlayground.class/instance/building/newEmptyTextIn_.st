newEmptyTextIn: aPopup

	^ GLMLabelBrick new
			text: 'No bindings';
			hSpaceFill;
			textPosition: #center;
			padding: aPopup themer bindingThemer emptyTextPadding;
			textColor: aPopup themer bindingThemer emptyTextColor;
			fontSize: aPopup themer bindingThemer emptyTextFontSize;
			yourself