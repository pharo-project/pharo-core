initialize-release
initializeForms
	"Initialize the receiver's image forms."

	|inactiveForm|
	super initializeForms.
	inactiveForm := self newWindowInactiveControlForm.
	self forms
		at: #stripes put: self newStripesForm;
		at: #windowCloseOver put: self newWindowCloseOverForm;
		at: #windowMinimizeOver put: self newWindowMinimizeOverForm;
		at: #windowMaximizeOver put: self newWindowMaximizeOverForm;
		at: #windowMenuOver put: self newWindowMenuOverForm;
		at: #windowClosePassive put: inactiveForm;
		at: #windowMinimizePassive put: inactiveForm;
		at: #windowMaximizePassive put: inactiveForm;
		at: #windowMenuPassive put: self newWindowMenuPassiveForm