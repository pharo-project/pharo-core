buildConfirmationCheckbox: aCheckbox

	aCheckbox
		id: #skipConfirmation;
		text: 'Submit automatically without confirmation';
		action: [ :choice | QualityAssistantSettings reportWithoutAsking: choice ].
		
	QualityAssistantSettings reportWithoutAsking
		ifTrue: [ aCheckbox check ]
		ifFalse: [ aCheckbox uncheck ]