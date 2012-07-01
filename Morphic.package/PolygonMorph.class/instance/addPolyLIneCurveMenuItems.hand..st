menu
addPolyLIneCurveMenuItems: aMenu hand: aHandMorph 

	aMenu addLine;
				addUpdating: #openOrClosePhrase
				target: self
				action: #makeOpenOrClosed.
			
			aMenu
				addUpdating: #smoothOrSegmentedPhrase
				target: self
				action: #toggleSmoothing.