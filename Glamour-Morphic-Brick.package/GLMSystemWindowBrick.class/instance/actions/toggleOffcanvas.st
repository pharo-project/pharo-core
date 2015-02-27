toggleOffcanvas

	self isOffcanvasVisible
		ifTrue: [ self hideOffcanvas ]
		ifFalse: [ self showOffcanvas ]