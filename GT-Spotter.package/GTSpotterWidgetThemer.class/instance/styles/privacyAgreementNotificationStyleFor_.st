privacyAgreementNotificationStyleFor: aBrick

	| color |
	color := aBrick sendUsageData 
		ifTrue: [ self privacyAgreementIsSendingDataColor. ]
		ifFalse: [ self privacyAgreementIsNotSendingDataColor. ].
	aBrick messageBrick rubricTextFamilyName: StandardFonts defaultFont familyName.
	aBrick
		color: color;
		borderColor: color darker;
		borderWidth: self outerBorderWidth;
		marginTop: 0