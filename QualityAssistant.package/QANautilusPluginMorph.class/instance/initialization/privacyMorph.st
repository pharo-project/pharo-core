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

	GLMAsyncTask new
		delay: 30000;
		onCompleted: [ self class wasOpenedBefore: true ];
		execute.

	agreementBrick settingsButtonBrick
		when: #onClicked
		do: [
			self class wasOpenedBefore: true.
			self updateList ].
		
	^ agreementBrick asBrickedMorph
		hResizing: #spaceFill;
		vResizing: #spaceFill