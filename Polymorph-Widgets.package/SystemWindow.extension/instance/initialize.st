*Polymorph-Widgets
initialize
	"Initialize a system window. Add label, stripes, etc., if desired"
	
	super initialize.
	allowReframeHandles := true.
	labelString ifNil: [labelString := 'Untitled Window'].
	isCollapsed := false.
	activeOnlyOnTop := true.
	paneMorphs := Array new.
	borderColor := Color lightGray.
	borderWidth := 1.
	self color: Color lightGray lighter lighter lighter.
	self layoutPolicy: ProportionalLayout new.
	self clipSubmorphs: true.
	
	self theme
		configureWindowBorderFor: self;
		configureWindowDropShadowFor: self.	
	self initializeLabelArea.

	self cellPositioning: #topLeft. "make the offsets easy to calculate!"
	self addGripsIfWanted.
	
	self extent: 300 @ 200.
	mustNotClose := false.
	updatablePanes := Array new