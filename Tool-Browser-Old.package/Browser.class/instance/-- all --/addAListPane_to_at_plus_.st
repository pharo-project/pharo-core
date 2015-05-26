addAListPane: aListPane to: window at: nominalFractions plus: verticalOffset

	| row switchHeight |

	row := AlignmentMorph newColumn
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		layoutInset: 0;
		borderWidth: 1;
		layoutPolicy: ProportionalLayout new.
	switchHeight := StandardFonts buttonFont height + 12.
	self 
		addMorphicSwitchesTo: row 
		at: ((0@1 corner: 1@1) asLayoutFrame topOffset: switchHeight negated).
	row 
		addMorph: aListPane
		fullFrame: (LayoutFrame identity bottomOffset: switchHeight negated).	

	window 
		addMorph: row
		fullFrame: (nominalFractions asLayoutFrame topOffset: verticalOffset).	
	row on: #mouseEnter send: #paneTransition: to: window.
	row on: #mouseLeave send: #paneTransition: to: window.

