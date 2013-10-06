updateStackFromSelectedContext
	"The selection of the stack changed. Expand the stack if necessary ang give it the focus."
	
	self expandStack.
	self stack takeKeyboardFocus "This is needed, as otherwise, the inspectors will take the focus"