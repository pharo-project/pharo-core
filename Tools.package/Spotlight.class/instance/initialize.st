initialize
initialize 
	| title |
	
	super initialize.
	opened := false.
	self beSticky.
	self 
		layoutPolicy: TableLayout new;
	 	listDirection: #leftToRight;
	 	wrapCentering: #center;
	 	hResizing: #spaceFill;
	 	vResizing: #spaceFill;
	 	layoutInset: 5;	
		cellInset: 5.
	
	self addMorphBack: UITheme current smallFindIcon asMorph.
	
	title := UITheme current
		newLabelIn: self 
		for: self 
		getLabel: #label 
		getEnabled: nil.	
	self addMorphBack: title.
	title color: Color white.
		
	search :=  self createSearchMorph
		crAction: [ :text | self accepted ];
		yourself.
	self addMorphBack: search.

	self 
		on: Character escape 
		do: [ self close ].