initializeForms
	"Initialize the receiver's image forms."

	super initializeForms.
	self forms
		at: #vThumb put: self newVThumbForm;
		at: #hThumb put: self newHThumbForm;
		at: #windowCloseOver put: self newWindowCloseOverForm;
		at: #windowCloseDown put: self newWindowCloseDownForm;
		at: #windowClosePassive put: self newWindowClosePassiveForm;
		at: #windowMinimizeOver put: self newWindowMinimizeOverForm;
		at: #windowMinimizeDown put: self newWindowMinimizeDownForm;
		at: #windowMaximizeOver put: self newWindowMaximizeOverForm;
		at: #windowMaximizeDown put: self newWindowMaximizeDownForm