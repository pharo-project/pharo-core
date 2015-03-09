agreementButtonStyleFor: aBrick

	aBrick
		enable;
		familyName: 'Bitmap DejaVu Sans';
		padding: self outerBorderWidth + self settingsLabelPadding;
		paddingTop: self settingsLabelPadding;
		with: [ :b | b label
			padding: 1;
			customFont;
			beBold ];
		color: (self borderColor alpha: 0.9);
		textColor: self settingsLabelTextColor;
		marginRight: self previewArrowWidth - self previewArrowGapHack