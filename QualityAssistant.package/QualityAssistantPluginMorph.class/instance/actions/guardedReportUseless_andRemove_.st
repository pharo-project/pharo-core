guardedReportUseless: aReCritic andRemove: anIconicButton

	QualityAssistantSettings reportWithoutAsking
		ifTrue: [ ^ self
			reportUseless: aReCritic
			andRemove: anIconicButton ].
		
	((GLMFormBrick new
		color: Smalltalk ui theme textColor negated;
		width: 350;
		vShrinkWrap;
		label: [ :header | header
			text: 'Critic Complaint Confirmation';
			hSpaceFill;
			fontSize: 16 ];
		text: [ :message | message
			hSpaceFill;
			text: 'You are about to send us a report about uselesness of this critic. Please confirm that you want to share your data with us.' ];
		checkbox: [ :checkbox | checkbox
			id: #skipConfirmation;
			text: 'Submit automatically without confirmation';
			action: [ :choice | QualityAssistantSettings reportWithoutAsking: choice ].
			QualityAssistantSettings reportWithoutAsking
				ifTrue: [ checkbox check ] ifFalse: [ checkbox uncheck ] ];
		with: [ :form | form 
			addBrickBack: (GLMBrick new
			useHorizontalLinearLayout;
			hShrinkWrap;
			vShrinkWrap;
			hAlign: #right;
			addBrickBack: (form newButton
				marginRight: 3;
				text: 'OK';
				when: #onClicked do: [
					form window delete.
					self
						reportUseless: aReCritic
						andRemove: anIconicButton ]);
						addBrickBack: (form newButton
				marginLeft: 3;
				text: 'Cancel';
				when: #onClicked do: [ form window delete ]);
			yourself)
		];
	asBrickedMorph)
		openInWindowLabeled: '') beUnresizeable in: [ :window |
			self window modalLockTo: window ]