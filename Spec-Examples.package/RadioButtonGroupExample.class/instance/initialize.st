initialization
initialize
	"Initialization code for RadioButtonGroupExample"

	super initialize.

	container := PanelMorph new.
	container
		changeTableLayout;
		listDirection: #bottomToLeft.
	
	self instantiateMorphs.