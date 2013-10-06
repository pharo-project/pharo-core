buildSecondColumn: aWindow

	| buttons |
	buttons := PanelMorph new.
	buttons 
		changeProportionalLayout;
		addMorph: self buildInstanceButton
		fullFrame: ( (0@0 corner: 0.5@0 ) asLayoutFrame bottomRightOffset: -2@25 );
		addMorph: self buildCommentButton
		fullFrame: ((	0.5@0 corner: 1@0 ) asLayoutFrame
						topLeftOffset: 2@0 ; 
						bottomRightOffset: 0@25 );
		hResizing: #spaceFill;
		vResizing: #rigid;
		height: 25;
		yourself.
		
	^ secondColumn :=  PanelMorph new
						changeProportionalLayout;
						addMorph: self buildList2
						fullFrame: (LayoutFrame identity
										bottomOffset: -25);
						addMorph: buttons
						fullFrame: ( (0@1 corner: 1@1 ) asLayoutFrame topOffset: -25);
						hResizing: #spaceFill;
						vResizing: #spaceFill;
						yourself.