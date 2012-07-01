actions
newContentMorph
	| panel  |
	panel := PanelMorph new.
	panel layoutPolicy: ProportionalLayout new;
		layoutInset: 0;
		hResizing: #spaceFill;
		vResizing: #spaceFill.
					
	panel addMorph: self buildListMorph
			fullFrame: (LayoutFrame
					fractions: (0@0 corner: 1@1)
					offsets: (0@0 corner: 0@33 negated)).
	
	panel addMorph: self buildSearchMorph
			fullFrame: (LayoutFrame
					fractions: (0@1 corner: 1@1)
					offsets: (0@30 negated  corner: 0@0)).
	^ panel