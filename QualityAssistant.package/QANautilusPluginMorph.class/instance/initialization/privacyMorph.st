privacyMorph
	| agreementBrick |

	agreementBrick := GLMPrivacyAgreementBrick new.
	
	agreementBrick sendUsageData ifTrue: [ 
		self class wasOpenedBefore: true.
		^ listMorph ].
	
	agreementBrick messageBrick
		rubricTextFamilyName: StandardFonts defaultFont familyName.
	agreementBrick messageBrick rubricTextColor: Color black.
	agreementBrick
		vSpaceFill;
		color: Color paleRed.

	self class startPrivacyPromptTaskIfNecessary.

	agreementBrick settingsButtonBrick
		when: #onClicked
		do: [
			self class wasOpenedBefore: true.
			self updateList ].
		
	^ agreementBrick asBrickedMorph
		hResizing: #spaceFill;
		vResizing: #spaceFill