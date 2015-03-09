openSettingsFor: aBrick

	^ GLMPopupDialogBrick new
			addContentBrick: (
				GLMPrivacyAgreementBrick new
					width: 465;
					padding: #(5 10);
					vShrinkWrap;
					yourself);
			with: [ :b | b contentBrick ];
			openBelowFor: aBrick;
			beRightToLeftWithOffset: 50