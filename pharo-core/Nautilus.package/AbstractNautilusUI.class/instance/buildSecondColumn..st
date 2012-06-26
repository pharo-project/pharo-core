displaying
buildSecondColumn: aWindow

	| buttons |
	buttons := PanelMorph new.
	buttons 
		changeProportionalLayout;
		addMorph: self buildInstanceButton
		fullFrame: (LayoutFrame
						fractions: (	0@0 corner: 0.5@0 )
						offsets: (0@0 corner: (-2)@25 ));
		addMorph: self buildCommentButton
		fullFrame: (LayoutFrame
						fractions: (	0.5@0 corner: 1@0 )
						offsets: (2@0 corner: 0@25 ));
		hResizing: #spaceFill;
		vResizing: #rigid;
		height: 25;
		yourself.
		
	^ secondColumn :=  PanelMorph new
						changeProportionalLayout;
						addMorph: self buildList2
						fullFrame: (LayoutFrame
										fractions: (0@0 corner: 1@1)
										offsets: (0@0 corner: 0@(25 negated)));
						addMorph: buttons
						fullFrame: (LayoutFrame
										fractions: (	0@1 corner: 1@1 )
										offsets: (0@(25 negated) corner: 0@0 ));
						hResizing: #spaceFill;
						vResizing: #spaceFill;
						yourself.