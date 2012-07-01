menu commands
addPopupMenuItems: aCustomMenu hand: aHandMorph
" Show and toggle the popUp boolean menu item."

	aCustomMenu addLine. 
	
	aCustomMenu addUpdating: #popupFeatureString  target: self 
	selector: #togglePopupFeature argumentList: #() .

	