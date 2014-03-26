initializeForms
	"Initialize the receiver's image forms."

	super initializeForms.
	self forms
		at: #vThumb put: self newVThumbForm;
		at: #hThumb put: self newHThumbForm;
		at: #windowCloseDown put: self newWindowCloseDownForm;
		at: #windowClosePassive put: self newWindowClosePassiveForm;
		at: #windowMinimizeDown put: self newWindowMinimizeDownForm;
		at: #windowMaximizeDown put: self newWindowMaximizeDownForm