as yet unclassified
initialize
	"Initialize the receiver."

	super initialize.
	self
		leftButton: self newLeftButton;
		rightButton: self newRightButton;
		scroller: self newScroller;
		changeTableLayout;
		listDirection: #leftToRight;
		cellInset: 2;
		addMorphBack: self leftButton;
		addMorphBack: self scroller;
		addMorphBack: self rightButton