addPolyLIneCurveMenuItems: aMenu hand: aHandMorph 

	aMenu addLine;
				addUpdating: #openOrClosePhrase
				target: self
				action: #toggleOpenOrClosed.
			
			aMenu
				addUpdating: #smoothOrSegmentedPhrase
				target: self
				action: #toggleSmoothing.