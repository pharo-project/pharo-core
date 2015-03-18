basicAgreeCheckboxBrick: anObject
	basicAgreeCheckboxBrick := anObject.
	self basicAgreeCheckboxBrick
		marginTop: 5;
		check: self sendUsageData;
		action: [ :boolean | 
				self sendUsageData: boolean ];
		text: self defaultGeneralText.

	self addBrickBack: self basicAgreeCheckboxBrick.