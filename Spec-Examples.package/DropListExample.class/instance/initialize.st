initialization
initialize
	"Initialization code for RadioButtonGroupExample"

	container := PanelMorph new.
	self instantiateMorphs.
	
	container
		changeTableLayout;
		listDirection: #bottomToLeft.
	
	super initialize.