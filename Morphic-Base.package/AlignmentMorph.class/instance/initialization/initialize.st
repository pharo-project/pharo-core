initialize
	
	super initialize.
	self layoutPolicy: TableLayout new;
	 listDirection: #leftToRight;
	 wrapCentering: #topLeft;
	 hResizing: #spaceFill;
	 vResizing: #spaceFill;
	 layoutInset: 2;
	 rubberBandCells: true
	
	"from AlignmentMorphBob1which was merged in this class, in an effort to remove alignementBob1 and 
	still preserving the addInRow behavior"
	"	self listDirection: #topToBottom.
		self layoutInset: 0.
		self hResizing: #rigid. 
		self vResizing: #rigid"