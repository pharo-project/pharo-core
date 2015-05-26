initialize
	"Initialize the state of the receiver."

	super initialize.
	self
		rubberBandCells: false;
		listDirection: #topToBottom;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		wrapCentering: #center;
		cellPositioning: #center.
	enabled := true.
	self initializeLabelMorph.	"this is a safe guard for enabled: among others."
	askBeforeChanging := false.
	triggerOnMouseDown := false.
	showSelectionFeedback := false.
	arguments := #().
	self
		layoutInset: (self theme buttonLabelInsetFor: self);
		borderStyle: BorderStyle thinGray;
		extent: 20 @ 15;
		setProperty: #lastState toValue: false;
		cornerStyle: (self theme buttonCornerStyleIn: nil).
	self clipSubmorphs: true